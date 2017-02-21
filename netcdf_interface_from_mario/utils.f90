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
        integer :: t !< current time step
        integer :: nloop !< number of loops 
        type(state_class) :: state !< state object
        type(forc_class) :: forc !< forcing object
    end type

  contains

      subroutine init(dom,domname)
      implicit none
      character(len=*), intent(in) :: domname !< domain name
      type(smb_class), intent(in out) :: dom  !< domain object
      integer :: nx, ny, nloop
      character(len=256) :: surface_physics_nml

      end subroutine

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
