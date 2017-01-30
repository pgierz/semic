program test_read
  use netcdf
  implicit none

  ! PG: Define the file which will contain the INPUT data for the SEMIC model
  character (len = *), parameter :: FILE_NAME = "semic_emb_input.nc"

  ! We need to define the length of the 2D data:
  ! PG: Can this be retrieved from the file?
  ! PG: These are always integers...don't they need to be floats?
  integer, parameter :: NX = 6, NY = 12
  integer :: data_in(NY, NX)

  ! This will be the netCDF ID for the file and data variable
  integer :: ncid, varid        !! PG: Here, we will need to expand varid into
                                !! multiple numbers for each required field
  ! Open the file. NF90_NOWROTE says we want read-only access
  ! NOTE: The function check is defiend below

  ! Get the varid of the data variable, based on its name.
  call check( nf90_inq_varid(ncid, "data", varid) )

  ! Read the data.
  call check( nf90_get_var(ncid, varid, data_in) )

  ! Check the data.
  do x = 1, NX
     do y = 1, NY
        if (data_in(y, x) /= (x - 1) * NY + (y - 1)) then
           print *, "data_in(", y, ", ", x, ") = ", data_in(y, x)
           stop "Stopped"
        end if
     end do
  end do

  ! Close the file, freeing all resources.
  call check( nf90_close(ncid) )

  print *,"*** SUCCESS reading example file ", FILE_NAME, "! "

contains
  subroutine check(status)
    integer, intent ( in) :: status

    if(status /= nf90_noerr) then 
       print *, trim(nf90_strerror(status))
       stop "Stopped"
    end if
  end subroutine check
end program test_read
