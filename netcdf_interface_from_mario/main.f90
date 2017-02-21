program main

  use utils
  impilcit none
  type(smb_class) :: smb1
  integer :: nloop, nl, nt, t

  call init(smb1,"GRIS")

  do nl=1,nloop
    do t=1,nt
      call update(smb1,t)
    end do
  end do


  call surface_dealloc(dom%surface%now)

end program main
