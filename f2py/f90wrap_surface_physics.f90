! Module surface_physics defined in file ../surface_physics.fpp

subroutine f90wrap_surface_param_class__get__name(this, f90wrap_name)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    character(1024), intent(out) :: f90wrap_name
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_name = this_ptr%p%name
end subroutine f90wrap_surface_param_class__get__name

subroutine f90wrap_surface_param_class__set__name(this, f90wrap_name)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    character(1024), intent(in) :: f90wrap_name
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%name = f90wrap_name
end subroutine f90wrap_surface_param_class__set__name

subroutine f90wrap_surface_param_class__array__boundary(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 18
    this_ptr = transfer(this, this_ptr)
    dshape(1:2) = (/len(this_ptr%p%boundary(1)), shape(this_ptr%p%boundary)/)
    dloc = loc(this_ptr%p%boundary)
end subroutine f90wrap_surface_param_class__array__boundary

subroutine f90wrap_surface_param_class__get__alb_scheme(this, &
    f90wrap_alb_scheme)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    character(1024), intent(out) :: f90wrap_alb_scheme
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_alb_scheme = this_ptr%p%alb_scheme
end subroutine f90wrap_surface_param_class__get__alb_scheme

subroutine f90wrap_surface_param_class__set__alb_scheme(this, &
    f90wrap_alb_scheme)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    character(1024), intent(in) :: f90wrap_alb_scheme
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%alb_scheme = f90wrap_alb_scheme
end subroutine f90wrap_surface_param_class__set__alb_scheme

subroutine f90wrap_surface_param_class__get__nx(this, f90wrap_nx)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_nx
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_nx = this_ptr%p%nx
end subroutine f90wrap_surface_param_class__get__nx

subroutine f90wrap_surface_param_class__set__nx(this, f90wrap_nx)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_nx
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%nx = f90wrap_nx
end subroutine f90wrap_surface_param_class__set__nx

subroutine f90wrap_surface_param_class__get__n_ksub(this, f90wrap_n_ksub)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_n_ksub
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_n_ksub = this_ptr%p%n_ksub
end subroutine f90wrap_surface_param_class__get__n_ksub

subroutine f90wrap_surface_param_class__set__n_ksub(this, f90wrap_n_ksub)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_n_ksub
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%n_ksub = f90wrap_n_ksub
end subroutine f90wrap_surface_param_class__set__n_ksub

subroutine f90wrap_surface_param_class__get__ceff(this, f90wrap_ceff)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_ceff
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_ceff = this_ptr%p%ceff
end subroutine f90wrap_surface_param_class__get__ceff

subroutine f90wrap_surface_param_class__set__ceff(this, f90wrap_ceff)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_ceff
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%ceff = f90wrap_ceff
end subroutine f90wrap_surface_param_class__set__ceff

subroutine f90wrap_surface_param_class__get__albi(this, f90wrap_albi)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_albi
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_albi = this_ptr%p%albi
end subroutine f90wrap_surface_param_class__get__albi

subroutine f90wrap_surface_param_class__set__albi(this, f90wrap_albi)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_albi
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%albi = f90wrap_albi
end subroutine f90wrap_surface_param_class__set__albi

subroutine f90wrap_surface_param_class__get__albl(this, f90wrap_albl)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_albl
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_albl = this_ptr%p%albl
end subroutine f90wrap_surface_param_class__get__albl

subroutine f90wrap_surface_param_class__set__albl(this, f90wrap_albl)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_albl
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%albl = f90wrap_albl
end subroutine f90wrap_surface_param_class__set__albl

subroutine f90wrap_surface_param_class__get__alb_smax(this, f90wrap_alb_smax)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_alb_smax
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_alb_smax = this_ptr%p%alb_smax
end subroutine f90wrap_surface_param_class__get__alb_smax

subroutine f90wrap_surface_param_class__set__alb_smax(this, f90wrap_alb_smax)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_alb_smax
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%alb_smax = f90wrap_alb_smax
end subroutine f90wrap_surface_param_class__set__alb_smax

subroutine f90wrap_surface_param_class__get__alb_smin(this, f90wrap_alb_smin)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_alb_smin
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_alb_smin = this_ptr%p%alb_smin
end subroutine f90wrap_surface_param_class__get__alb_smin

subroutine f90wrap_surface_param_class__set__alb_smin(this, f90wrap_alb_smin)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_alb_smin
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%alb_smin = f90wrap_alb_smin
end subroutine f90wrap_surface_param_class__set__alb_smin

subroutine f90wrap_surface_param_class__get__hcrit(this, f90wrap_hcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_hcrit
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_hcrit = this_ptr%p%hcrit
end subroutine f90wrap_surface_param_class__get__hcrit

subroutine f90wrap_surface_param_class__set__hcrit(this, f90wrap_hcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_hcrit
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%hcrit = f90wrap_hcrit
end subroutine f90wrap_surface_param_class__set__hcrit

subroutine f90wrap_surface_param_class__get__rcrit(this, f90wrap_rcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_rcrit
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_rcrit = this_ptr%p%rcrit
end subroutine f90wrap_surface_param_class__get__rcrit

subroutine f90wrap_surface_param_class__set__rcrit(this, f90wrap_rcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_rcrit
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%rcrit = f90wrap_rcrit
end subroutine f90wrap_surface_param_class__set__rcrit

subroutine f90wrap_surface_param_class__get__amp(this, f90wrap_amp)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_amp
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_amp = this_ptr%p%amp
end subroutine f90wrap_surface_param_class__get__amp

subroutine f90wrap_surface_param_class__set__amp(this, f90wrap_amp)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_amp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%amp = f90wrap_amp
end subroutine f90wrap_surface_param_class__set__amp

subroutine f90wrap_surface_param_class__get__csh(this, f90wrap_csh)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_csh
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_csh = this_ptr%p%csh
end subroutine f90wrap_surface_param_class__get__csh

subroutine f90wrap_surface_param_class__set__csh(this, f90wrap_csh)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_csh
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%csh = f90wrap_csh
end subroutine f90wrap_surface_param_class__set__csh

subroutine f90wrap_surface_param_class__get__clh(this, f90wrap_clh)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_clh
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_clh = this_ptr%p%clh
end subroutine f90wrap_surface_param_class__get__clh

subroutine f90wrap_surface_param_class__set__clh(this, f90wrap_clh)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_clh
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%clh = f90wrap_clh
end subroutine f90wrap_surface_param_class__set__clh

subroutine f90wrap_surface_param_class__get__tmin(this, f90wrap_tmin)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tmin
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tmin = this_ptr%p%tmin
end subroutine f90wrap_surface_param_class__get__tmin

subroutine f90wrap_surface_param_class__set__tmin(this, f90wrap_tmin)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tmin
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tmin = f90wrap_tmin
end subroutine f90wrap_surface_param_class__set__tmin

subroutine f90wrap_surface_param_class__get__tmax(this, f90wrap_tmax)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tmax
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tmax = this_ptr%p%tmax
end subroutine f90wrap_surface_param_class__get__tmax

subroutine f90wrap_surface_param_class__set__tmax(this, f90wrap_tmax)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tmax
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tmax = f90wrap_tmax
end subroutine f90wrap_surface_param_class__set__tmax

subroutine f90wrap_surface_param_class__get__tstic(this, f90wrap_tstic)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tstic
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tstic = this_ptr%p%tstic
end subroutine f90wrap_surface_param_class__get__tstic

subroutine f90wrap_surface_param_class__set__tstic(this, f90wrap_tstic)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tstic
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tstic = f90wrap_tstic
end subroutine f90wrap_surface_param_class__set__tstic

subroutine f90wrap_surface_param_class__get__tsticsub(this, f90wrap_tsticsub)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tsticsub
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tsticsub = this_ptr%p%tsticsub
end subroutine f90wrap_surface_param_class__get__tsticsub

subroutine f90wrap_surface_param_class__set__tsticsub(this, f90wrap_tsticsub)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tsticsub
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tsticsub = f90wrap_tsticsub
end subroutine f90wrap_surface_param_class__set__tsticsub

subroutine f90wrap_surface_param_class__get__tau_a(this, f90wrap_tau_a)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tau_a
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tau_a = this_ptr%p%tau_a
end subroutine f90wrap_surface_param_class__get__tau_a

subroutine f90wrap_surface_param_class__set__tau_a(this, f90wrap_tau_a)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tau_a
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tau_a = f90wrap_tau_a
end subroutine f90wrap_surface_param_class__set__tau_a

subroutine f90wrap_surface_param_class__get__tau_f(this, f90wrap_tau_f)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tau_f
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tau_f = this_ptr%p%tau_f
end subroutine f90wrap_surface_param_class__get__tau_f

subroutine f90wrap_surface_param_class__set__tau_f(this, f90wrap_tau_f)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tau_f
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tau_f = f90wrap_tau_f
end subroutine f90wrap_surface_param_class__set__tau_f

subroutine f90wrap_surface_param_class__get__w_crit(this, f90wrap_w_crit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_w_crit
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_w_crit = this_ptr%p%w_crit
end subroutine f90wrap_surface_param_class__get__w_crit

subroutine f90wrap_surface_param_class__set__w_crit(this, f90wrap_w_crit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_w_crit
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%w_crit = f90wrap_w_crit
end subroutine f90wrap_surface_param_class__set__w_crit

subroutine f90wrap_surface_param_class__get__mcrit(this, f90wrap_mcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_mcrit
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_mcrit = this_ptr%p%mcrit
end subroutine f90wrap_surface_param_class__get__mcrit

subroutine f90wrap_surface_param_class__set__mcrit(this, f90wrap_mcrit)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_mcrit
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%mcrit = f90wrap_mcrit
end subroutine f90wrap_surface_param_class__set__mcrit

subroutine f90wrap_surface_param_class__get__afac(this, f90wrap_afac)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_afac
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_afac = this_ptr%p%afac
end subroutine f90wrap_surface_param_class__get__afac

subroutine f90wrap_surface_param_class__set__afac(this, f90wrap_afac)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_afac
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%afac = f90wrap_afac
end subroutine f90wrap_surface_param_class__set__afac

subroutine f90wrap_surface_param_class__get__tmid(this, f90wrap_tmid)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(out) :: f90wrap_tmid
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tmid = this_ptr%p%tmid
end subroutine f90wrap_surface_param_class__get__tmid

subroutine f90wrap_surface_param_class__set__tmid(this, f90wrap_tmid)
    use surface_physics, only: surface_param_class
    implicit none
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_param_class_ptr_type) :: this_ptr
    double precision, intent(in) :: f90wrap_tmid
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tmid = f90wrap_tmid
end subroutine f90wrap_surface_param_class__set__tmid

subroutine f90wrap_surface_param_class_initialise(this)
    use surface_physics, only: surface_param_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_surface_param_class_initialise

subroutine f90wrap_surface_param_class_finalise(this)
    use surface_physics, only: surface_param_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type(surface_param_class_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_surface_param_class_finalise

subroutine f90wrap_surface_state_class__array__t2m(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%t2m)) then
        dshape(1:1) = shape(this_ptr%p%t2m)
        dloc = loc(this_ptr%p%t2m)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__t2m

subroutine f90wrap_surface_state_class__array__tsurf(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%tsurf)) then
        dshape(1:1) = shape(this_ptr%p%tsurf)
        dloc = loc(this_ptr%p%tsurf)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__tsurf

subroutine f90wrap_surface_state_class__array__hsnow(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%hsnow)) then
        dshape(1:1) = shape(this_ptr%p%hsnow)
        dloc = loc(this_ptr%p%hsnow)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__hsnow

subroutine f90wrap_surface_state_class__array__hice(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%hice)) then
        dshape(1:1) = shape(this_ptr%p%hice)
        dloc = loc(this_ptr%p%hice)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__hice

subroutine f90wrap_surface_state_class__array__alb(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%alb)) then
        dshape(1:1) = shape(this_ptr%p%alb)
        dloc = loc(this_ptr%p%alb)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__alb

subroutine f90wrap_surface_state_class__array__alb_snow(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%alb_snow)) then
        dshape(1:1) = shape(this_ptr%p%alb_snow)
        dloc = loc(this_ptr%p%alb_snow)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__alb_snow

subroutine f90wrap_surface_state_class__array__melt(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%melt)) then
        dshape(1:1) = shape(this_ptr%p%melt)
        dloc = loc(this_ptr%p%melt)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__melt

subroutine f90wrap_surface_state_class__array__melted_snow(this, nd, dtype, &
    dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%melted_snow)) then
        dshape(1:1) = shape(this_ptr%p%melted_snow)
        dloc = loc(this_ptr%p%melted_snow)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__melted_snow

subroutine f90wrap_surface_state_class__array__melted_ice(this, nd, dtype, &
    dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%melted_ice)) then
        dshape(1:1) = shape(this_ptr%p%melted_ice)
        dloc = loc(this_ptr%p%melted_ice)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__melted_ice

subroutine f90wrap_surface_state_class__array__refr(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%refr)) then
        dshape(1:1) = shape(this_ptr%p%refr)
        dloc = loc(this_ptr%p%refr)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__refr

subroutine f90wrap_surface_state_class__array__smb(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%smb)) then
        dshape(1:1) = shape(this_ptr%p%smb)
        dloc = loc(this_ptr%p%smb)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__smb

subroutine f90wrap_surface_state_class__array__acc(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%acc)) then
        dshape(1:1) = shape(this_ptr%p%acc)
        dloc = loc(this_ptr%p%acc)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__acc

subroutine f90wrap_surface_state_class__array__lhf(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%lhf)) then
        dshape(1:1) = shape(this_ptr%p%lhf)
        dloc = loc(this_ptr%p%lhf)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__lhf

subroutine f90wrap_surface_state_class__array__shf(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%shf)) then
        dshape(1:1) = shape(this_ptr%p%shf)
        dloc = loc(this_ptr%p%shf)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__shf

subroutine f90wrap_surface_state_class__array__lwu(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%lwu)) then
        dshape(1:1) = shape(this_ptr%p%lwu)
        dloc = loc(this_ptr%p%lwu)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__lwu

subroutine f90wrap_surface_state_class__array__subl(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%subl)) then
        dshape(1:1) = shape(this_ptr%p%subl)
        dloc = loc(this_ptr%p%subl)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__subl

subroutine f90wrap_surface_state_class__array__evap(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%evap)) then
        dshape(1:1) = shape(this_ptr%p%evap)
        dloc = loc(this_ptr%p%evap)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__evap

subroutine f90wrap_surface_state_class__array__smb_snow(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%smb_snow)) then
        dshape(1:1) = shape(this_ptr%p%smb_snow)
        dloc = loc(this_ptr%p%smb_snow)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__smb_snow

subroutine f90wrap_surface_state_class__array__smb_ice(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%smb_ice)) then
        dshape(1:1) = shape(this_ptr%p%smb_ice)
        dloc = loc(this_ptr%p%smb_ice)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__smb_ice

subroutine f90wrap_surface_state_class__array__runoff(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%runoff)) then
        dshape(1:1) = shape(this_ptr%p%runoff)
        dloc = loc(this_ptr%p%runoff)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__runoff

subroutine f90wrap_surface_state_class__array__qmr(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%qmr)) then
        dshape(1:1) = shape(this_ptr%p%qmr)
        dloc = loc(this_ptr%p%qmr)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__qmr

subroutine f90wrap_surface_state_class__array__qmr_res(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%qmr_res)) then
        dshape(1:1) = shape(this_ptr%p%qmr_res)
        dloc = loc(this_ptr%p%qmr_res)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__qmr_res

subroutine f90wrap_surface_state_class__array__sf(this, nd, dtype, dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%sf)) then
        dshape(1:1) = shape(this_ptr%p%sf)
        dloc = loc(this_ptr%p%sf)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__sf

subroutine f90wrap_surface_state_class__array__rf(this, nd, dtype, dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%rf)) then
        dshape(1:1) = shape(this_ptr%p%rf)
        dloc = loc(this_ptr%p%rf)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__rf

subroutine f90wrap_surface_state_class__array__sp(this, nd, dtype, dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%sp)) then
        dshape(1:1) = shape(this_ptr%p%sp)
        dloc = loc(this_ptr%p%sp)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__sp

subroutine f90wrap_surface_state_class__array__lwd(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%lwd)) then
        dshape(1:1) = shape(this_ptr%p%lwd)
        dloc = loc(this_ptr%p%lwd)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__lwd

subroutine f90wrap_surface_state_class__array__swd(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%swd)) then
        dshape(1:1) = shape(this_ptr%p%swd)
        dloc = loc(this_ptr%p%swd)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__swd

subroutine f90wrap_surface_state_class__array__wind(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%wind)) then
        dshape(1:1) = shape(this_ptr%p%wind)
        dloc = loc(this_ptr%p%wind)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__wind

subroutine f90wrap_surface_state_class__array__rhoa(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%rhoa)) then
        dshape(1:1) = shape(this_ptr%p%rhoa)
        dloc = loc(this_ptr%p%rhoa)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__rhoa

subroutine f90wrap_surface_state_class__array__qq(this, nd, dtype, dshape, dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%qq)) then
        dshape(1:1) = shape(this_ptr%p%qq)
        dloc = loc(this_ptr%p%qq)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__qq

subroutine f90wrap_surface_state_class__array__mask(this, nd, dtype, dshape, &
    dloc)
    use surface_physics, only: surface_state_class
    implicit none
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in) :: this(2)
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 5
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%mask)) then
        dshape(1:1) = shape(this_ptr%p%mask)
        dloc = loc(this_ptr%p%mask)
    else
        dloc = 0
    end if
end subroutine f90wrap_surface_state_class__array__mask

subroutine f90wrap_surface_state_class_initialise(this)
    use surface_physics, only: surface_state_class
    implicit none
    
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_surface_state_class_initialise

subroutine f90wrap_surface_state_class_finalise(this)
    use surface_physics, only: surface_state_class
    implicit none
    
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type(surface_state_class_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_surface_state_class_finalise

subroutine f90wrap_boundary_opt_class__get__t2m(this, f90wrap_t2m)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_t2m
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_t2m = this_ptr%p%t2m
end subroutine f90wrap_boundary_opt_class__get__t2m

subroutine f90wrap_boundary_opt_class__set__t2m(this, f90wrap_t2m)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_t2m
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%t2m = f90wrap_t2m
end subroutine f90wrap_boundary_opt_class__set__t2m

subroutine f90wrap_boundary_opt_class__get__tsurf(this, f90wrap_tsurf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_tsurf
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_tsurf = this_ptr%p%tsurf
end subroutine f90wrap_boundary_opt_class__get__tsurf

subroutine f90wrap_boundary_opt_class__set__tsurf(this, f90wrap_tsurf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_tsurf
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%tsurf = f90wrap_tsurf
end subroutine f90wrap_boundary_opt_class__set__tsurf

subroutine f90wrap_boundary_opt_class__get__hsnow(this, f90wrap_hsnow)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_hsnow
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_hsnow = this_ptr%p%hsnow
end subroutine f90wrap_boundary_opt_class__get__hsnow

subroutine f90wrap_boundary_opt_class__set__hsnow(this, f90wrap_hsnow)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_hsnow
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%hsnow = f90wrap_hsnow
end subroutine f90wrap_boundary_opt_class__set__hsnow

subroutine f90wrap_boundary_opt_class__get__alb(this, f90wrap_alb)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_alb
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_alb = this_ptr%p%alb
end subroutine f90wrap_boundary_opt_class__get__alb

subroutine f90wrap_boundary_opt_class__set__alb(this, f90wrap_alb)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_alb
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%alb = f90wrap_alb
end subroutine f90wrap_boundary_opt_class__set__alb

subroutine f90wrap_boundary_opt_class__get__melt(this, f90wrap_melt)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_melt
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_melt = this_ptr%p%melt
end subroutine f90wrap_boundary_opt_class__get__melt

subroutine f90wrap_boundary_opt_class__set__melt(this, f90wrap_melt)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_melt
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%melt = f90wrap_melt
end subroutine f90wrap_boundary_opt_class__set__melt

subroutine f90wrap_boundary_opt_class__get__refr(this, f90wrap_refr)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_refr
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_refr = this_ptr%p%refr
end subroutine f90wrap_boundary_opt_class__get__refr

subroutine f90wrap_boundary_opt_class__set__refr(this, f90wrap_refr)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_refr
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%refr = f90wrap_refr
end subroutine f90wrap_boundary_opt_class__set__refr

subroutine f90wrap_boundary_opt_class__get__smb(this, f90wrap_smb)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_smb
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_smb = this_ptr%p%smb
end subroutine f90wrap_boundary_opt_class__get__smb

subroutine f90wrap_boundary_opt_class__set__smb(this, f90wrap_smb)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_smb
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%smb = f90wrap_smb
end subroutine f90wrap_boundary_opt_class__set__smb

subroutine f90wrap_boundary_opt_class__get__acc(this, f90wrap_acc)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_acc
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_acc = this_ptr%p%acc
end subroutine f90wrap_boundary_opt_class__get__acc

subroutine f90wrap_boundary_opt_class__set__acc(this, f90wrap_acc)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_acc
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%acc = f90wrap_acc
end subroutine f90wrap_boundary_opt_class__set__acc

subroutine f90wrap_boundary_opt_class__get__lhf(this, f90wrap_lhf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_lhf
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_lhf = this_ptr%p%lhf
end subroutine f90wrap_boundary_opt_class__get__lhf

subroutine f90wrap_boundary_opt_class__set__lhf(this, f90wrap_lhf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_lhf
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%lhf = f90wrap_lhf
end subroutine f90wrap_boundary_opt_class__set__lhf

subroutine f90wrap_boundary_opt_class__get__shf(this, f90wrap_shf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_shf
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_shf = this_ptr%p%shf
end subroutine f90wrap_boundary_opt_class__get__shf

subroutine f90wrap_boundary_opt_class__set__shf(this, f90wrap_shf)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_shf
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%shf = f90wrap_shf
end subroutine f90wrap_boundary_opt_class__set__shf

subroutine f90wrap_boundary_opt_class__get__subl(this, f90wrap_subl)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(out) :: f90wrap_subl
    
    this_ptr = transfer(this, this_ptr)
    f90wrap_subl = this_ptr%p%subl
end subroutine f90wrap_boundary_opt_class__get__subl

subroutine f90wrap_boundary_opt_class__set__subl(this, f90wrap_subl)
    use surface_physics, only: boundary_opt_class
    implicit none
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(boundary_opt_class_ptr_type) :: this_ptr
    logical, intent(in) :: f90wrap_subl
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%subl = f90wrap_subl
end subroutine f90wrap_boundary_opt_class__set__subl

subroutine f90wrap_boundary_opt_class_initialise(this)
    use surface_physics, only: boundary_opt_class
    implicit none
    
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(boundary_opt_class_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_boundary_opt_class_initialise

subroutine f90wrap_boundary_opt_class_finalise(this)
    use surface_physics, only: boundary_opt_class
    implicit none
    
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(boundary_opt_class_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_boundary_opt_class_finalise

subroutine f90wrap_surface_physics_class__get__par(this, f90wrap_par)
    use surface_physics, only: surface_param_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_par(2)
    type(surface_param_class_ptr_type) :: par_ptr
    
    this_ptr = transfer(this, this_ptr)
    par_ptr%p => this_ptr%p%par
    f90wrap_par = transfer(par_ptr,f90wrap_par)
end subroutine f90wrap_surface_physics_class__get__par

subroutine f90wrap_surface_physics_class__set__par(this, f90wrap_par)
    use surface_physics, only: surface_param_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_par(2)
    type(surface_param_class_ptr_type) :: par_ptr
    
    this_ptr = transfer(this, this_ptr)
    par_ptr = transfer(f90wrap_par,par_ptr)
    this_ptr%p%par = par_ptr%p
end subroutine f90wrap_surface_physics_class__set__par

subroutine f90wrap_surface_physics_class__get__bnd(this, f90wrap_bnd)
    use surface_physics, only: boundary_opt_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_bnd(2)
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    
    this_ptr = transfer(this, this_ptr)
    bnd_ptr%p => this_ptr%p%bnd
    f90wrap_bnd = transfer(bnd_ptr,f90wrap_bnd)
end subroutine f90wrap_surface_physics_class__get__bnd

subroutine f90wrap_surface_physics_class__set__bnd(this, f90wrap_bnd)
    use surface_physics, only: boundary_opt_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_bnd(2)
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    
    this_ptr = transfer(this, this_ptr)
    bnd_ptr = transfer(f90wrap_bnd,bnd_ptr)
    this_ptr%p%bnd = bnd_ptr%p
end subroutine f90wrap_surface_physics_class__set__bnd

subroutine f90wrap_surface_physics_class__get__bnd0(this, f90wrap_bnd0)
    use surface_physics, only: boundary_opt_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_bnd0(2)
    type(boundary_opt_class_ptr_type) :: bnd0_ptr
    
    this_ptr = transfer(this, this_ptr)
    bnd0_ptr%p => this_ptr%p%bnd0
    f90wrap_bnd0 = transfer(bnd0_ptr,f90wrap_bnd0)
end subroutine f90wrap_surface_physics_class__get__bnd0

subroutine f90wrap_surface_physics_class__set__bnd0(this, f90wrap_bnd0)
    use surface_physics, only: boundary_opt_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_bnd0(2)
    type(boundary_opt_class_ptr_type) :: bnd0_ptr
    
    this_ptr = transfer(this, this_ptr)
    bnd0_ptr = transfer(f90wrap_bnd0,bnd0_ptr)
    this_ptr%p%bnd0 = bnd0_ptr%p
end subroutine f90wrap_surface_physics_class__set__bnd0

subroutine f90wrap_surface_physics_class__get__now(this, f90wrap_now)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_now(2)
    type(surface_state_class_ptr_type) :: now_ptr
    
    this_ptr = transfer(this, this_ptr)
    now_ptr%p => this_ptr%p%now
    f90wrap_now = transfer(now_ptr,f90wrap_now)
end subroutine f90wrap_surface_physics_class__get__now

subroutine f90wrap_surface_physics_class__set__now(this, f90wrap_now)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_now(2)
    type(surface_state_class_ptr_type) :: now_ptr
    
    this_ptr = transfer(this, this_ptr)
    now_ptr = transfer(f90wrap_now,now_ptr)
    this_ptr%p%now = now_ptr%p
end subroutine f90wrap_surface_physics_class__set__now

subroutine f90wrap_surface_physics_class__get__mon(this, f90wrap_mon)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_mon(2)
    type(surface_state_class_ptr_type) :: mon_ptr
    
    this_ptr = transfer(this, this_ptr)
    mon_ptr%p => this_ptr%p%mon
    f90wrap_mon = transfer(mon_ptr,f90wrap_mon)
end subroutine f90wrap_surface_physics_class__get__mon

subroutine f90wrap_surface_physics_class__set__mon(this, f90wrap_mon)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_mon(2)
    type(surface_state_class_ptr_type) :: mon_ptr
    
    this_ptr = transfer(this, this_ptr)
    mon_ptr = transfer(f90wrap_mon,mon_ptr)
    this_ptr%p%mon = mon_ptr%p
end subroutine f90wrap_surface_physics_class__set__mon

subroutine f90wrap_surface_physics_class__get__ann(this, f90wrap_ann)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out) :: f90wrap_ann(2)
    type(surface_state_class_ptr_type) :: ann_ptr
    
    this_ptr = transfer(this, this_ptr)
    ann_ptr%p => this_ptr%p%ann
    f90wrap_ann = transfer(ann_ptr,f90wrap_ann)
end subroutine f90wrap_surface_physics_class__get__ann

subroutine f90wrap_surface_physics_class__set__ann(this, f90wrap_ann)
    use surface_physics, only: surface_state_class, surface_physics_class
    implicit none
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    integer, intent(in)   :: this(2)
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in) :: f90wrap_ann(2)
    type(surface_state_class_ptr_type) :: ann_ptr
    
    this_ptr = transfer(this, this_ptr)
    ann_ptr = transfer(f90wrap_ann,ann_ptr)
    this_ptr%p%ann = ann_ptr%p
end subroutine f90wrap_surface_physics_class__set__ann

subroutine f90wrap_surface_physics_class_initialise(this)
    use surface_physics, only: surface_physics_class
    implicit none
    
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine f90wrap_surface_physics_class_initialise

subroutine f90wrap_surface_physics_class_finalise(this)
    use surface_physics, only: surface_physics_class
    implicit none
    
    type surface_physics_class_ptr_type
        type(surface_physics_class), pointer :: p => NULL()
    end type surface_physics_class_ptr_type
    type(surface_physics_class_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine f90wrap_surface_physics_class_finalise

subroutine f90wrap_surface_energy_and_mass_balance(now, par, bnd, day, year)
    use surface_physics, only: surface_param_class, surface_energy_and_mass_balance, &
        surface_state_class, boundary_opt_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    type(surface_param_class_ptr_type) :: par_ptr
    integer, intent(in), dimension(2) :: par
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    integer, intent(in), dimension(2) :: bnd
    integer, intent(in) :: day
    integer, intent(in) :: year
    now_ptr = transfer(now, now_ptr)
    par_ptr = transfer(par, par_ptr)
    bnd_ptr = transfer(bnd, bnd_ptr)
    call surface_energy_and_mass_balance(now=now_ptr%p, par=par_ptr%p, &
        bnd=bnd_ptr%p, day=day, year=year)
end subroutine f90wrap_surface_energy_and_mass_balance

subroutine f90wrap_energy_balance(now, par, bnd, day, year)
    use surface_physics, only: surface_param_class, energy_balance, &
        surface_state_class, boundary_opt_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    type(surface_param_class_ptr_type) :: par_ptr
    integer, intent(in), dimension(2) :: par
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    integer, intent(in), dimension(2) :: bnd
    integer, intent(in) :: day
    integer, intent(in) :: year
    now_ptr = transfer(now, now_ptr)
    par_ptr = transfer(par, par_ptr)
    bnd_ptr = transfer(bnd, bnd_ptr)
    call energy_balance(now=now_ptr%p, par=par_ptr%p, bnd=bnd_ptr%p, day=day, &
        year=year)
end subroutine f90wrap_energy_balance

subroutine f90wrap_mass_balance(now, par, bnd, day, year)
    use surface_physics, only: surface_param_class, surface_state_class, &
        mass_balance, boundary_opt_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    type(surface_param_class_ptr_type) :: par_ptr
    integer, intent(in), dimension(2) :: par
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    integer, intent(in), dimension(2) :: bnd
    integer, intent(in) :: day
    integer, intent(in) :: year
    now_ptr = transfer(now, now_ptr)
    par_ptr = transfer(par, par_ptr)
    bnd_ptr = transfer(bnd, bnd_ptr)
    call mass_balance(now=now_ptr%p, par=par_ptr%p, bnd=bnd_ptr%p, day=day, &
        year=year)
end subroutine f90wrap_mass_balance

subroutine f90wrap_surface_physics_average(ave, now, step, nt)
    use surface_physics, only: surface_physics_average, surface_state_class
    implicit none
    
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type(surface_state_class_ptr_type) :: ave_ptr
    integer, intent(in), dimension(2) :: ave
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    character(*) :: step
    double precision, optional, intent(in) :: nt
    ave_ptr = transfer(ave, ave_ptr)
    now_ptr = transfer(now, now_ptr)
    call surface_physics_average(ave=ave_ptr%p, now=now_ptr%p, step=step, nt=nt)
end subroutine f90wrap_surface_physics_average

subroutine f90wrap_surface_alloc(now, npts)
    use surface_physics, only: surface_state_class, surface_alloc
    implicit none
    
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    integer :: npts
    now_ptr = transfer(now, now_ptr)
    call surface_alloc(now=now_ptr%p, npts=npts)
end subroutine f90wrap_surface_alloc

subroutine f90wrap_surface_dealloc(now)
    use surface_physics, only: surface_dealloc, surface_state_class
    implicit none
    
    type surface_state_class_ptr_type
        type(surface_state_class), pointer :: p => NULL()
    end type surface_state_class_ptr_type
    type(surface_state_class_ptr_type) :: now_ptr
    integer, intent(in), dimension(2) :: now
    now_ptr = transfer(now, now_ptr)
    call surface_dealloc(now=now_ptr%p)
end subroutine f90wrap_surface_dealloc

subroutine f90wrap_surface_physics_par_load(par, filename)
    use surface_physics, only: surface_param_class, surface_physics_par_load
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type(surface_param_class_ptr_type) :: par_ptr
    integer, intent(in), dimension(2) :: par
    character(*) :: filename
    par_ptr = transfer(par, par_ptr)
    call surface_physics_par_load(par=par_ptr%p, filename=filename)
end subroutine f90wrap_surface_physics_par_load

subroutine f90wrap_surface_boundary_define(bnd, boundary, n0)
    use surface_physics, only: surface_boundary_define, boundary_opt_class
    implicit none
    
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    integer, intent(in), dimension(2) :: bnd
    character(256), intent(in), dimension(n0) :: boundary
    integer :: n0
    !f2py intent(hide), depend(boundary) :: n0 = shape(boundary,0)
    bnd_ptr = transfer(bnd, bnd_ptr)
    call surface_boundary_define(bnd=bnd_ptr%p, boundary=boundary)
end subroutine f90wrap_surface_boundary_define

subroutine f90wrap_print_param(par)
    use surface_physics, only: print_param, surface_param_class
    implicit none
    
    type surface_param_class_ptr_type
        type(surface_param_class), pointer :: p => NULL()
    end type surface_param_class_ptr_type
    type(surface_param_class_ptr_type) :: par_ptr
    integer, intent(in), dimension(2) :: par
    par_ptr = transfer(par, par_ptr)
    call print_param(par=par_ptr%p)
end subroutine f90wrap_print_param

subroutine f90wrap_print_boundary_opt(bnd)
    use surface_physics, only: print_boundary_opt, boundary_opt_class
    implicit none
    
    type boundary_opt_class_ptr_type
        type(boundary_opt_class), pointer :: p => NULL()
    end type boundary_opt_class_ptr_type
    type(boundary_opt_class_ptr_type) :: bnd_ptr
    integer, intent(in), dimension(2) :: bnd
    bnd_ptr = transfer(bnd, bnd_ptr)
    call print_boundary_opt(bnd=bnd_ptr%p)
end subroutine f90wrap_print_boundary_opt

subroutine f90wrap_surface_physics__get__sigm(f90wrap_sigm)
    use surface_physics, only: surface_physics_sigm => sigm
    implicit none
    double precision, intent(out) :: f90wrap_sigm
    
    f90wrap_sigm = surface_physics_sigm
end subroutine f90wrap_surface_physics__get__sigm

subroutine f90wrap_surface_physics__get__eps(f90wrap_eps)
    use surface_physics, only: surface_physics_eps => eps
    implicit none
    double precision, intent(out) :: f90wrap_eps
    
    f90wrap_eps = surface_physics_eps
end subroutine f90wrap_surface_physics__get__eps

subroutine f90wrap_surface_physics__get__cls(f90wrap_cls)
    use surface_physics, only: surface_physics_cls => cls
    implicit none
    double precision, intent(out) :: f90wrap_cls
    
    f90wrap_cls = surface_physics_cls
end subroutine f90wrap_surface_physics__get__cls

subroutine f90wrap_surface_physics__get__clv(f90wrap_clv)
    use surface_physics, only: surface_physics_clv => clv
    implicit none
    double precision, intent(out) :: f90wrap_clv
    
    f90wrap_clv = surface_physics_clv
end subroutine f90wrap_surface_physics__get__clv

subroutine f90wrap_surface_physics__get__cap(f90wrap_cap)
    use surface_physics, only: surface_physics_cap => cap
    implicit none
    double precision, intent(out) :: f90wrap_cap
    
    f90wrap_cap = surface_physics_cap
end subroutine f90wrap_surface_physics__get__cap

! End of module surface_physics defined in file ../surface_physics.fpp

