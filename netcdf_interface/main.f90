program main

  use utils
  implicit none
  type(smb_class) :: smb1
  integer :: nloop, nl, nt, t

  call init(smb1,"GRIS")

  nloop = 1
  nt = 365

  do nl=1,nloop
    do t=1,nt
      call update(smb1,t)
      ! print *,"PG: Test"
      print *,smb1%surface%now%smb
    end do
  end do

  ! ! print *,"PG: Test"
  ! print *,smb1%surface%now%smb

  call surface_dealloc(smb1%surface%now)

end program main
