module utils

  use ncio
  use surface_physics

  type forc_class !< Stores all external forcing fields
        double precision, allocatable, dimension(:,:) :: tt   !< air temperature
        double precision, allocatable, dimension(:,:) :: rhoa !< air density
        double precision, allocatable, dimension(:,:) :: qq   !< specific humidity
        double precision, allocatable, dimension(:,:) :: sf   !< snow fall
        double precision, allocatable, dimension(:,:) :: rf   !< rain fall
        double precision, allocatable, dimension(:,:) :: lwd  !< downward LW
        double precision, allocatable, dimension(:,:) :: swd  !< downward SW
        double precision, allocatable, dimension(:,:) :: wind !< wind speed
        double precision, allocatable, dimension(:,:) :: sp   !< surface pressure
    end type

    type state_class !< Stores calculated fields
        double precision, allocatable, dimension(:,:) :: tsurf   !< surface temperature
        double precision, allocatable, dimension(:,:) :: alb     !< surface albedo
        double precision, allocatable, dimension(:,:) :: hsnow   !< snow height
        double precision, allocatable, dimension(:,:) :: hice    !< ice thickness
        double precision, allocatable, dimension(:,:) :: melt    !< melt
        double precision, allocatable, dimension(:,:) :: refr    !< refreezing
        double precision, allocatable, dimension(:,:) :: massbal !< mass balance
        double precision, allocatable, dimension(:,:) :: subl    !< sublimation/evaporation
        double precision, allocatable, dimension(:,:) :: acc     !< accumulation
        double precision, allocatable, dimension(:,:) :: shf     !< sensible heat flux
        double precision, allocatable, dimension(:,:) :: lhf     !< latent heat flux
        double precision, allocatable, dimension(:,:) :: swnet   !< net SW
    end type
 
    type smb_class !< Container for all information needed to model a given domain (eg Greenland or Antarctica)
        type(surface_physics_class) :: surface    !< surface class (from module surface_physics: contains: parameter, forcing, and daily class
        character(len=256) :: surface_physics_nml !< Name of surface physics namelist file
        character(len=256) :: date_string !< Date string, e.g., "days since 01-01-2006"
        
        ! Static (per year or greater) variables
        integer, allocatable, dimension(:)   :: mask  !< 2D mask  
        integer :: nloop !< number of loops 
        type(state_class) :: state !< state object
        type(forc_class) :: forc !< forcing object
    end type

  contains

      subroutine init(dom,domname)
      implicit none
      character(len=*), intent(in) :: domname !< domain name
      type(smb_class), intent(in out) :: dom  !< domain object
      integer :: nx, ny, nt, nloop
      character(len=256) :: surface_physics_nml, forc_file
      double precision, allocatable, dimension(:,:) :: sf, rf, sp, lwd, swd,&
            wind, tt, qq, rhoa

! hard-coded numbers
      surface_physics_nml = 'semic.nml'
      forc_file = 'forcing.nc'
      nx = 32
      ny = 17
      nt = 335

      dom%grid%G%nx = nx
      dom%grid%G%ny = ny

      dom%surface%par%name     = trim(domname)
      dom%surface%par%nx       = nx*ny
      call surface_alloc(dom%surface%now,nx*ny)

      ! initialise model variables
      dom%surface%now%hsnow = 1.0
      dom%surface%now%hice  = 0.0
      dom%surface%now%alb = 0.8
      dom%surface%now%tsurf = 260.0
      dom%surface%now%alb_snow = 0.8

      dom%surface%now%mask = 2.0 ! all points treated as ice point (0/1/2 = ocean/land/ice)

      ! read model parameters from namelist file
      dom%surface_physics_nml = surface_physics_nml
      call surface_physics_par_load(dom%surface%par,dom%surface_physics_nml)

      dom%driver%ntime = nt

      ! check if boundary fields are provided (e.g., albedo as read from ECHAM6)
      call surface_boundary_define(dom%surface%bnd,dom%surface%par%boundary)

      allocate(tt(nx*ny,nt))
      allocate(sf(nx*ny,nt))
      allocate(rf(nx*ny,nt))
      allocate(sp(nx*ny,nt))
      allocate(lwd(nx*ny,nt))
      allocate(swd(nx*ny,nt))
      allocate(wind(nx*ny,nt))
      allocate(qq(nx*ny,nt))
      allocate(rhoa(nx*ny,nt))

      call read_forcing(trim(forc_file),nx,ny,nt,wind,tt,sf,rf,qq,rhoa,sp,lwd,swd)
      dom%forc%sf   = sf/1.e3 ! kg/m2/s -> m/s
      dom%forc%rf   = rf/1.e3 ! kg/m2/s -> m/s
      dom%forc%sp   = sp      ! hPa -> Pa
      dom%forc%lwd  = lwd
      dom%forc%swd  = swd
      dom%forc%wind = wind
      dom%forc%rhoa = rhoa
      dom%forc%tt   = tt
      dom%forc%qq   = qq       ! g/kg -> kg/kg

      end subroutine init

      subroutine update(dom,day)
        type(smb_class), intent(in out) :: dom !< domain object
        integer, intent(in) :: day  !< current day

        dom%surface%now%t2m  = dom%forc%tt(:,day)
        dom%surface%now%swd  = dom%forc%swd(:,day)
        dom%surface%now%lwd  = dom%forc%lwd(:,day)
        dom%surface%now%wind = dom%forc%wind(:,day)
        dom%surface%now%qq   = dom%forc%qq(:,day)
        dom%surface%now%sp   = dom%forc%sp(:,day)
        dom%surface%now%rhoa = dom%forc%rhoa(:,day)
        dom%surface%now%sf   = dom%forc%sf(:,day)
        dom%surface%now%rf   = dom%forc%rf(:,day)

        call surface_energy_and_mass_balance(dom%surface%now,dom%surface%par,dom%surface%bnd,day,-1)

      end subroutine update

      subroutine read_forcing(fnm_in,nx,ny,nt,wind,tt,sf,rf,qq,rhoa,sp,lwd,swd)

          integer, intent(in) :: nx !< x dimension
          integer, intent(in) :: ny !< y dimension
          integer, intent(in) :: nt !< time dimension
          character(len=256), intent(in) :: fnm_in !< ECHAM6 file

          double precision, allocatable, dimension(:,:,:)   :: tmp
          double precision, dimension(nx*ny,nt), intent(out) :: sf !< snow fall
          double precision, dimension(nx*ny,nt), intent(out) :: rf !< rain fall
          double precision, dimension(nx*ny,nt), intent(out) :: sp !< surface pressure
          double precision, dimension(nx*ny,nt), intent(out) :: lwd !< downward LW
          double precision, dimension(nx*ny,nt), intent(out) :: swd !< downward SW
          double precision, dimension(nx*ny,nt), intent(out) :: wind !< wind
          double precision, dimension(nx*ny,nt), intent(out) :: tt !< air temperature
          double precision, dimension(nx*ny,nt), intent(out) :: qq !< specific humidity
          double precision, dimension(nx*ny,nt), intent(out) :: rhoa !< air density
          allocate(tmp(nx,ny,nt))

          ! Read input data (forcing)
          call nc_read(fnm_in,"aprs",tmp)
          sf = reshape(tmp,shape(sf))
          call nc_read(fnm_in,"wind10",tmp)
          wind = reshape(tmp,shape(wind))
          call nc_read(fnm_in,"temp2",tmp)
          tt = reshape(tmp,shape(tt))
          call nc_read(fnm_in,"q",tmp)
          qq = reshape(tmp,shape(qq))
          call nc_read(fnm_in,"aprl",tmp)
          rf = reshape(tmp,shape(rf))
          call nc_read(fnm_in,"aps",tmp)
          sp = reshape(tmp,shape(sp))
          call nc_read(fnm_in,"trads",tmp)
          lwd = reshape(tmp,shape(lwd))
          call nc_read(fnm_in,"rhoa",tmp)
          rhoa = reshape(tmp,shape(rhoa))
          deallocate(tmp)

      end subroutine read_forcing


end module utils
