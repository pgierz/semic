program main
  use netcdf
  use utils
  implicit none

  ! This is the name of the data file we will create.
  character (len = *), parameter :: FILE_NAME = "semic_output.nc"

  ! We are writing 2D data, a 6 x 12 grid. 
  integer, parameter :: NDIMS = 3
  integer, parameter :: NX = 192, NY = 96, NT = 365

  ! This is the data array we will write. It will just be filled with
  ! a progression of integers for this example.
  real, dimension(NX, NY, NT) :: data_out

  ! When we create netCDF files, variables and dimensions, we get back
  ! an ID for each one.
  integer :: ncid, varid, dimids(NDIMS)
  integer :: x_dimid, y_dimid, t_dimid

  type(smb_class) :: smb1
  integer :: nloop, nl, t
  !integer parameter :: out_unit=20

  call init(smb1,"GRIS")

  nloop = 1
  !nt = 365


  ! ! print *,"PG: Test"
  ! print *,smb1%surface%now%smb


  do nl=1,nloop
    do t=1,NT
      call update(smb1,t)
      !print *,"PG: Test", t
      !print *,size(smb1%surface%now%smb)
      !print *, smb1%surface%now%smb
      data_out(1:NX, 1:NY, t) = reshape(smb1%surface%now%smb, (/ NX, NY/))
    end do
  end do
  
!print *,data_out
!end program main


  ! Always check the return code of every netCDF function call. In
  ! this example program, wrapping netCDF calls with "call check()"
  ! makes sure that any return which is not equal to nf90_noerr (0)
  ! will print a netCDF error message and exit.

  ! Create the netCDF file. The nf90_clobber parameter tells netCDF to
  ! overwrite this file, if it already exists.
  call check( nf90_create(FILE_NAME, NF90_CLOBBER, ncid) )

  ! Define the dimensions. NetCDF will hand back an ID for each. 
  call check( nf90_def_dim(ncid, "x", NX, x_dimid) )
  call check( nf90_def_dim(ncid, "y", NY, y_dimid) )
  call check( nf90_def_dim(ncid, "t", NT, t_dimid) )

  ! The dimids array is used to pass the IDs of the dimensions of
  ! the variables. Note that in fortran arrays are stored in
  ! column-major format.
  dimids =  (/ x_dimid, y_dimid, t_dimid /)

  ! Define the variable. The type of the variable in this case is
  ! NF90_FLOAT (float).
  call check( nf90_def_var(ncid, "semic_surface_mass_balance", NF90_FLOAT, dimids, varid) )

  ! End define mode. This tells netCDF we are done defining metadata.
  call check( nf90_enddef(ncid) )

  ! Write the pretend data to the file. Although netCDF supports
  ! reading and writing subsets of data, in this case we write all the
  ! data in one operation.
  !print *, "PG: some information! ::: ", varid, ncid, dimids 
  call check( nf90_put_var(ncid, varid, data_out) )

  ! Close the file. This frees up any internal netCDF resources
  ! associated with the file, and flushes any buffers.
  call check( nf90_close(ncid) )

  print *, "*** SUCCESS writing semic file semic_output.nc! "

  call surface_dealloc(smb1%surface%now)

contains
  subroutine check(status)
    integer, intent ( in) :: status
    
    if(status /= nf90_noerr) then 
      print *, trim(nf90_strerror(status))
      stop "Stopped"
    end if
  end subroutine check  



end program main
