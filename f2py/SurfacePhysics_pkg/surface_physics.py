"""
Module surface_physics


Defined at ../surface_physics.fpp lines 11-940

"""
import _SurfacePhysics_pkg
import f90wrap.runtime
import logging

_arrays = {}
_objs = {}

class Surface_Param_Class(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=surface_param_class)
    
    
    Defined at ../surface_physics.fpp lines 31-57
    
    """
    def __init__(self, handle=None):
        """
        self = Surface_Param_Class()
        
        
        Defined at ../surface_physics.fpp lines 31-57
        
        
        Returns
        -------
        this : Surface_Param_Class
        	Object to be constructed
        
        
        Automatically generated constructor for surface_param_class
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _SurfacePhysics_pkg.f90wrap_surface_param_class_initialise()
    
    def __del__(self):
        """
        Destructor for class Surface_Param_Class
        
        
        Defined at ../surface_physics.fpp lines 31-57
        
        Parameters
        ----------
        this : Surface_Param_Class
        	Object to be destructed
        
        
        Automatically generated destructor for surface_param_class
        """
        if self._alloc:
            _SurfacePhysics_pkg.f90wrap_surface_param_class_finalise(this=self._handle)
    
    @property
    def name(self):
        """
        Element name ftype=character (len=256) pytype=str
        
        
        Defined at ../surface_physics.fpp line 32
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__name(self._handle)
    
    @name.setter
    def name(self, name):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__name(self._handle, name)
    
    @property
    def boundary(self):
        """
        Element boundary ftype=character (len=256) pytype=str
        
        
        Defined at ../surface_physics.fpp line 33
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__array__boundary(self._handle)
        if array_handle in self._arrays:
            boundary = self._arrays[array_handle]
        else:
            boundary = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_param_class__array__boundary)
            self._arrays[array_handle] = boundary
        return boundary
    
    @boundary.setter
    def boundary(self, boundary):
        self.boundary[...] = boundary
    
    @property
    def alb_scheme(self):
        """
        Element alb_scheme ftype=character (len=256) pytype=str
        
        
        Defined at ../surface_physics.fpp line 34
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__alb_scheme(self._handle)
    
    @alb_scheme.setter
    def alb_scheme(self, alb_scheme):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__alb_scheme(self._handle, \
            alb_scheme)
    
    @property
    def nx(self):
        """
        Element nx ftype=integer              pytype=int
        
        
        Defined at ../surface_physics.fpp line 35
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__nx(self._handle)
    
    @nx.setter
    def nx(self, nx):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__nx(self._handle, nx)
    
    @property
    def n_ksub(self):
        """
        Element n_ksub ftype=integer              pytype=int
        
        
        Defined at ../surface_physics.fpp line 36
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__n_ksub(self._handle)
    
    @n_ksub.setter
    def n_ksub(self, n_ksub):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__n_ksub(self._handle, \
            n_ksub)
    
    @property
    def ceff(self):
        """
        Element ceff ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 37
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__ceff(self._handle)
    
    @ceff.setter
    def ceff(self, ceff):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__ceff(self._handle, ceff)
    
    @property
    def albi(self):
        """
        Element albi ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 38
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__albi(self._handle)
    
    @albi.setter
    def albi(self, albi):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__albi(self._handle, albi)
    
    @property
    def albl(self):
        """
        Element albl ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 39
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__albl(self._handle)
    
    @albl.setter
    def albl(self, albl):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__albl(self._handle, albl)
    
    @property
    def alb_smax(self):
        """
        Element alb_smax ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 40
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__alb_smax(self._handle)
    
    @alb_smax.setter
    def alb_smax(self, alb_smax):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__alb_smax(self._handle, \
            alb_smax)
    
    @property
    def alb_smin(self):
        """
        Element alb_smin ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 41
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__alb_smin(self._handle)
    
    @alb_smin.setter
    def alb_smin(self, alb_smin):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__alb_smin(self._handle, \
            alb_smin)
    
    @property
    def hcrit(self):
        """
        Element hcrit ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 42
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__hcrit(self._handle)
    
    @hcrit.setter
    def hcrit(self, hcrit):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__hcrit(self._handle, hcrit)
    
    @property
    def rcrit(self):
        """
        Element rcrit ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 43
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__rcrit(self._handle)
    
    @rcrit.setter
    def rcrit(self, rcrit):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__rcrit(self._handle, rcrit)
    
    @property
    def amp(self):
        """
        Element amp ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 44
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__amp(self._handle)
    
    @amp.setter
    def amp(self, amp):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__amp(self._handle, amp)
    
    @property
    def csh(self):
        """
        Element csh ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 45
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__csh(self._handle)
    
    @csh.setter
    def csh(self, csh):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__csh(self._handle, csh)
    
    @property
    def clh(self):
        """
        Element clh ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 46
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__clh(self._handle)
    
    @clh.setter
    def clh(self, clh):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__clh(self._handle, clh)
    
    @property
    def tmin(self):
        """
        Element tmin ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 47
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tmin(self._handle)
    
    @tmin.setter
    def tmin(self, tmin):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tmin(self._handle, tmin)
    
    @property
    def tmax(self):
        """
        Element tmax ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 48
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tmax(self._handle)
    
    @tmax.setter
    def tmax(self, tmax):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tmax(self._handle, tmax)
    
    @property
    def tstic(self):
        """
        Element tstic ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 49
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tstic(self._handle)
    
    @tstic.setter
    def tstic(self, tstic):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tstic(self._handle, tstic)
    
    @property
    def tsticsub(self):
        """
        Element tsticsub ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 50
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tsticsub(self._handle)
    
    @tsticsub.setter
    def tsticsub(self, tsticsub):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tsticsub(self._handle, \
            tsticsub)
    
    @property
    def tau_a(self):
        """
        Element tau_a ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 51
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tau_a(self._handle)
    
    @tau_a.setter
    def tau_a(self, tau_a):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tau_a(self._handle, tau_a)
    
    @property
    def tau_f(self):
        """
        Element tau_f ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 52
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tau_f(self._handle)
    
    @tau_f.setter
    def tau_f(self, tau_f):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tau_f(self._handle, tau_f)
    
    @property
    def w_crit(self):
        """
        Element w_crit ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 53
        
        """
        return \
            _SurfacePhysics_pkg.f90wrap_surface_param_class__get__w_crit(self._handle)
    
    @w_crit.setter
    def w_crit(self, w_crit):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__w_crit(self._handle, \
            w_crit)
    
    @property
    def mcrit(self):
        """
        Element mcrit ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 54
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__mcrit(self._handle)
    
    @mcrit.setter
    def mcrit(self, mcrit):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__mcrit(self._handle, mcrit)
    
    @property
    def afac(self):
        """
        Element afac ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 55
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__afac(self._handle)
    
    @afac.setter
    def afac(self, afac):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__afac(self._handle, afac)
    
    @property
    def tmid(self):
        """
        Element tmid ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 56
        
        """
        return _SurfacePhysics_pkg.f90wrap_surface_param_class__get__tmid(self._handle)
    
    @tmid.setter
    def tmid(self, tmid):
        _SurfacePhysics_pkg.f90wrap_surface_param_class__set__tmid(self._handle, tmid)
    
    def __str__(self):
        ret = ['<surface_param_class>{\n']
        ret.append('    name : ')
        ret.append(repr(self.name))
        ret.append(',\n    boundary : ')
        ret.append(repr(self.boundary))
        ret.append(',\n    alb_scheme : ')
        ret.append(repr(self.alb_scheme))
        ret.append(',\n    nx : ')
        ret.append(repr(self.nx))
        ret.append(',\n    n_ksub : ')
        ret.append(repr(self.n_ksub))
        ret.append(',\n    ceff : ')
        ret.append(repr(self.ceff))
        ret.append(',\n    albi : ')
        ret.append(repr(self.albi))
        ret.append(',\n    albl : ')
        ret.append(repr(self.albl))
        ret.append(',\n    alb_smax : ')
        ret.append(repr(self.alb_smax))
        ret.append(',\n    alb_smin : ')
        ret.append(repr(self.alb_smin))
        ret.append(',\n    hcrit : ')
        ret.append(repr(self.hcrit))
        ret.append(',\n    rcrit : ')
        ret.append(repr(self.rcrit))
        ret.append(',\n    amp : ')
        ret.append(repr(self.amp))
        ret.append(',\n    csh : ')
        ret.append(repr(self.csh))
        ret.append(',\n    clh : ')
        ret.append(repr(self.clh))
        ret.append(',\n    tmin : ')
        ret.append(repr(self.tmin))
        ret.append(',\n    tmax : ')
        ret.append(repr(self.tmax))
        ret.append(',\n    tstic : ')
        ret.append(repr(self.tstic))
        ret.append(',\n    tsticsub : ')
        ret.append(repr(self.tsticsub))
        ret.append(',\n    tau_a : ')
        ret.append(repr(self.tau_a))
        ret.append(',\n    tau_f : ')
        ret.append(repr(self.tau_f))
        ret.append(',\n    w_crit : ')
        ret.append(repr(self.w_crit))
        ret.append(',\n    mcrit : ')
        ret.append(repr(self.mcrit))
        ret.append(',\n    afac : ')
        ret.append(repr(self.afac))
        ret.append(',\n    tmid : ')
        ret.append(repr(self.tmid))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    
class Surface_State_Class(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=surface_state_class)
    
    
    Defined at ../surface_physics.fpp lines 59-92
    
    """
    def __init__(self, handle=None):
        """
        self = Surface_State_Class()
        
        
        Defined at ../surface_physics.fpp lines 59-92
        
        
        Returns
        -------
        this : Surface_State_Class
        	Object to be constructed
        
        
        Automatically generated constructor for surface_state_class
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _SurfacePhysics_pkg.f90wrap_surface_state_class_initialise()
    
    def __del__(self):
        """
        Destructor for class Surface_State_Class
        
        
        Defined at ../surface_physics.fpp lines 59-92
        
        Parameters
        ----------
        this : Surface_State_Class
        	Object to be destructed
        
        
        Automatically generated destructor for surface_state_class
        """
        if self._alloc:
            _SurfacePhysics_pkg.f90wrap_surface_state_class_finalise(this=self._handle)
    
    @property
    def t2m(self):
        """
        Element t2m ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 60
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__t2m(self._handle)
        if array_handle in self._arrays:
            t2m = self._arrays[array_handle]
        else:
            t2m = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__t2m)
            self._arrays[array_handle] = t2m
        return t2m
    
    @t2m.setter
    def t2m(self, t2m):
        self.t2m[...] = t2m
    
    @property
    def tsurf(self):
        """
        Element tsurf ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 61
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__tsurf(self._handle)
        if array_handle in self._arrays:
            tsurf = self._arrays[array_handle]
        else:
            tsurf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__tsurf)
            self._arrays[array_handle] = tsurf
        return tsurf
    
    @tsurf.setter
    def tsurf(self, tsurf):
        self.tsurf[...] = tsurf
    
    @property
    def hsnow(self):
        """
        Element hsnow ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 62
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__hsnow(self._handle)
        if array_handle in self._arrays:
            hsnow = self._arrays[array_handle]
        else:
            hsnow = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__hsnow)
            self._arrays[array_handle] = hsnow
        return hsnow
    
    @hsnow.setter
    def hsnow(self, hsnow):
        self.hsnow[...] = hsnow
    
    @property
    def hice(self):
        """
        Element hice ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 63
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__hice(self._handle)
        if array_handle in self._arrays:
            hice = self._arrays[array_handle]
        else:
            hice = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__hice)
            self._arrays[array_handle] = hice
        return hice
    
    @hice.setter
    def hice(self, hice):
        self.hice[...] = hice
    
    @property
    def alb(self):
        """
        Element alb ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 64
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__alb(self._handle)
        if array_handle in self._arrays:
            alb = self._arrays[array_handle]
        else:
            alb = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__alb)
            self._arrays[array_handle] = alb
        return alb
    
    @alb.setter
    def alb(self, alb):
        self.alb[...] = alb
    
    @property
    def alb_snow(self):
        """
        Element alb_snow ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 65
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__alb_snow(self._handle)
        if array_handle in self._arrays:
            alb_snow = self._arrays[array_handle]
        else:
            alb_snow = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__alb_snow)
            self._arrays[array_handle] = alb_snow
        return alb_snow
    
    @alb_snow.setter
    def alb_snow(self, alb_snow):
        self.alb_snow[...] = alb_snow
    
    @property
    def melt(self):
        """
        Element melt ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 66
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melt(self._handle)
        if array_handle in self._arrays:
            melt = self._arrays[array_handle]
        else:
            melt = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melt)
            self._arrays[array_handle] = melt
        return melt
    
    @melt.setter
    def melt(self, melt):
        self.melt[...] = melt
    
    @property
    def melted_snow(self):
        """
        Element melted_snow ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 67
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melted_snow(self._handle)
        if array_handle in self._arrays:
            melted_snow = self._arrays[array_handle]
        else:
            melted_snow = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melted_snow)
            self._arrays[array_handle] = melted_snow
        return melted_snow
    
    @melted_snow.setter
    def melted_snow(self, melted_snow):
        self.melted_snow[...] = melted_snow
    
    @property
    def melted_ice(self):
        """
        Element melted_ice ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 68
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melted_ice(self._handle)
        if array_handle in self._arrays:
            melted_ice = self._arrays[array_handle]
        else:
            melted_ice = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__melted_ice)
            self._arrays[array_handle] = melted_ice
        return melted_ice
    
    @melted_ice.setter
    def melted_ice(self, melted_ice):
        self.melted_ice[...] = melted_ice
    
    @property
    def refr(self):
        """
        Element refr ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 69
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__refr(self._handle)
        if array_handle in self._arrays:
            refr = self._arrays[array_handle]
        else:
            refr = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__refr)
            self._arrays[array_handle] = refr
        return refr
    
    @refr.setter
    def refr(self, refr):
        self.refr[...] = refr
    
    @property
    def smb(self):
        """
        Element smb ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 70
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb(self._handle)
        if array_handle in self._arrays:
            smb = self._arrays[array_handle]
        else:
            smb = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb)
            self._arrays[array_handle] = smb
        return smb
    
    @smb.setter
    def smb(self, smb):
        self.smb[...] = smb
    
    @property
    def acc(self):
        """
        Element acc ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 71
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__acc(self._handle)
        if array_handle in self._arrays:
            acc = self._arrays[array_handle]
        else:
            acc = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__acc)
            self._arrays[array_handle] = acc
        return acc
    
    @acc.setter
    def acc(self, acc):
        self.acc[...] = acc
    
    @property
    def lhf(self):
        """
        Element lhf ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 72
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lhf(self._handle)
        if array_handle in self._arrays:
            lhf = self._arrays[array_handle]
        else:
            lhf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lhf)
            self._arrays[array_handle] = lhf
        return lhf
    
    @lhf.setter
    def lhf(self, lhf):
        self.lhf[...] = lhf
    
    @property
    def shf(self):
        """
        Element shf ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 73
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__shf(self._handle)
        if array_handle in self._arrays:
            shf = self._arrays[array_handle]
        else:
            shf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__shf)
            self._arrays[array_handle] = shf
        return shf
    
    @shf.setter
    def shf(self, shf):
        self.shf[...] = shf
    
    @property
    def lwu(self):
        """
        Element lwu ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 74
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lwu(self._handle)
        if array_handle in self._arrays:
            lwu = self._arrays[array_handle]
        else:
            lwu = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lwu)
            self._arrays[array_handle] = lwu
        return lwu
    
    @lwu.setter
    def lwu(self, lwu):
        self.lwu[...] = lwu
    
    @property
    def subl(self):
        """
        Element subl ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 75
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__subl(self._handle)
        if array_handle in self._arrays:
            subl = self._arrays[array_handle]
        else:
            subl = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__subl)
            self._arrays[array_handle] = subl
        return subl
    
    @subl.setter
    def subl(self, subl):
        self.subl[...] = subl
    
    @property
    def evap(self):
        """
        Element evap ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 76
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__evap(self._handle)
        if array_handle in self._arrays:
            evap = self._arrays[array_handle]
        else:
            evap = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__evap)
            self._arrays[array_handle] = evap
        return evap
    
    @evap.setter
    def evap(self, evap):
        self.evap[...] = evap
    
    @property
    def smb_snow(self):
        """
        Element smb_snow ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 77
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb_snow(self._handle)
        if array_handle in self._arrays:
            smb_snow = self._arrays[array_handle]
        else:
            smb_snow = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb_snow)
            self._arrays[array_handle] = smb_snow
        return smb_snow
    
    @smb_snow.setter
    def smb_snow(self, smb_snow):
        self.smb_snow[...] = smb_snow
    
    @property
    def smb_ice(self):
        """
        Element smb_ice ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 78
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb_ice(self._handle)
        if array_handle in self._arrays:
            smb_ice = self._arrays[array_handle]
        else:
            smb_ice = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__smb_ice)
            self._arrays[array_handle] = smb_ice
        return smb_ice
    
    @smb_ice.setter
    def smb_ice(self, smb_ice):
        self.smb_ice[...] = smb_ice
    
    @property
    def runoff(self):
        """
        Element runoff ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 79
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__runoff(self._handle)
        if array_handle in self._arrays:
            runoff = self._arrays[array_handle]
        else:
            runoff = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__runoff)
            self._arrays[array_handle] = runoff
        return runoff
    
    @runoff.setter
    def runoff(self, runoff):
        self.runoff[...] = runoff
    
    @property
    def qmr(self):
        """
        Element qmr ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 80
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qmr(self._handle)
        if array_handle in self._arrays:
            qmr = self._arrays[array_handle]
        else:
            qmr = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qmr)
            self._arrays[array_handle] = qmr
        return qmr
    
    @qmr.setter
    def qmr(self, qmr):
        self.qmr[...] = qmr
    
    @property
    def qmr_res(self):
        """
        Element qmr_res ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 81
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qmr_res(self._handle)
        if array_handle in self._arrays:
            qmr_res = self._arrays[array_handle]
        else:
            qmr_res = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qmr_res)
            self._arrays[array_handle] = qmr_res
        return qmr_res
    
    @qmr_res.setter
    def qmr_res(self, qmr_res):
        self.qmr_res[...] = qmr_res
    
    @property
    def sf(self):
        """
        Element sf ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 83
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__sf(self._handle)
        if array_handle in self._arrays:
            sf = self._arrays[array_handle]
        else:
            sf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__sf)
            self._arrays[array_handle] = sf
        return sf
    
    @sf.setter
    def sf(self, sf):
        self.sf[...] = sf
    
    @property
    def rf(self):
        """
        Element rf ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 84
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__rf(self._handle)
        if array_handle in self._arrays:
            rf = self._arrays[array_handle]
        else:
            rf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__rf)
            self._arrays[array_handle] = rf
        return rf
    
    @rf.setter
    def rf(self, rf):
        self.rf[...] = rf
    
    @property
    def sp(self):
        """
        Element sp ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 85
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__sp(self._handle)
        if array_handle in self._arrays:
            sp = self._arrays[array_handle]
        else:
            sp = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__sp)
            self._arrays[array_handle] = sp
        return sp
    
    @sp.setter
    def sp(self, sp):
        self.sp[...] = sp
    
    @property
    def lwd(self):
        """
        Element lwd ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 86
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lwd(self._handle)
        if array_handle in self._arrays:
            lwd = self._arrays[array_handle]
        else:
            lwd = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__lwd)
            self._arrays[array_handle] = lwd
        return lwd
    
    @lwd.setter
    def lwd(self, lwd):
        self.lwd[...] = lwd
    
    @property
    def swd(self):
        """
        Element swd ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 87
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__swd(self._handle)
        if array_handle in self._arrays:
            swd = self._arrays[array_handle]
        else:
            swd = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__swd)
            self._arrays[array_handle] = swd
        return swd
    
    @swd.setter
    def swd(self, swd):
        self.swd[...] = swd
    
    @property
    def wind(self):
        """
        Element wind ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 88
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__wind(self._handle)
        if array_handle in self._arrays:
            wind = self._arrays[array_handle]
        else:
            wind = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__wind)
            self._arrays[array_handle] = wind
        return wind
    
    @wind.setter
    def wind(self, wind):
        self.wind[...] = wind
    
    @property
    def rhoa(self):
        """
        Element rhoa ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 89
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__rhoa(self._handle)
        if array_handle in self._arrays:
            rhoa = self._arrays[array_handle]
        else:
            rhoa = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__rhoa)
            self._arrays[array_handle] = rhoa
        return rhoa
    
    @rhoa.setter
    def rhoa(self, rhoa):
        self.rhoa[...] = rhoa
    
    @property
    def qq(self):
        """
        Element qq ftype=double precision pytype=unknown
        
        
        Defined at ../surface_physics.fpp line 90
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qq(self._handle)
        if array_handle in self._arrays:
            qq = self._arrays[array_handle]
        else:
            qq = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__qq)
            self._arrays[array_handle] = qq
        return qq
    
    @qq.setter
    def qq(self, qq):
        self.qq[...] = qq
    
    @property
    def mask(self):
        """
        Element mask ftype=integer pytype=int
        
        
        Defined at ../surface_physics.fpp line 91
        
        """
        array_ndim, array_type, array_shape, array_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_state_class__array__mask(self._handle)
        if array_handle in self._arrays:
            mask = self._arrays[array_handle]
        else:
            mask = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                    self._handle,
                                    _SurfacePhysics_pkg.f90wrap_surface_state_class__array__mask)
            self._arrays[array_handle] = mask
        return mask
    
    @mask.setter
    def mask(self, mask):
        self.mask[...] = mask
    
    def __str__(self):
        ret = ['<surface_state_class>{\n']
        ret.append('    t2m : ')
        ret.append(repr(self.t2m))
        ret.append(',\n    tsurf : ')
        ret.append(repr(self.tsurf))
        ret.append(',\n    hsnow : ')
        ret.append(repr(self.hsnow))
        ret.append(',\n    hice : ')
        ret.append(repr(self.hice))
        ret.append(',\n    alb : ')
        ret.append(repr(self.alb))
        ret.append(',\n    alb_snow : ')
        ret.append(repr(self.alb_snow))
        ret.append(',\n    melt : ')
        ret.append(repr(self.melt))
        ret.append(',\n    melted_snow : ')
        ret.append(repr(self.melted_snow))
        ret.append(',\n    melted_ice : ')
        ret.append(repr(self.melted_ice))
        ret.append(',\n    refr : ')
        ret.append(repr(self.refr))
        ret.append(',\n    smb : ')
        ret.append(repr(self.smb))
        ret.append(',\n    acc : ')
        ret.append(repr(self.acc))
        ret.append(',\n    lhf : ')
        ret.append(repr(self.lhf))
        ret.append(',\n    shf : ')
        ret.append(repr(self.shf))
        ret.append(',\n    lwu : ')
        ret.append(repr(self.lwu))
        ret.append(',\n    subl : ')
        ret.append(repr(self.subl))
        ret.append(',\n    evap : ')
        ret.append(repr(self.evap))
        ret.append(',\n    smb_snow : ')
        ret.append(repr(self.smb_snow))
        ret.append(',\n    smb_ice : ')
        ret.append(repr(self.smb_ice))
        ret.append(',\n    runoff : ')
        ret.append(repr(self.runoff))
        ret.append(',\n    qmr : ')
        ret.append(repr(self.qmr))
        ret.append(',\n    qmr_res : ')
        ret.append(repr(self.qmr_res))
        ret.append(',\n    sf : ')
        ret.append(repr(self.sf))
        ret.append(',\n    rf : ')
        ret.append(repr(self.rf))
        ret.append(',\n    sp : ')
        ret.append(repr(self.sp))
        ret.append(',\n    lwd : ')
        ret.append(repr(self.lwd))
        ret.append(',\n    swd : ')
        ret.append(repr(self.swd))
        ret.append(',\n    wind : ')
        ret.append(repr(self.wind))
        ret.append(',\n    rhoa : ')
        ret.append(repr(self.rhoa))
        ret.append(',\n    qq : ')
        ret.append(repr(self.qq))
        ret.append(',\n    mask : ')
        ret.append(repr(self.mask))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    
class Boundary_Opt_Class(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=boundary_opt_class)
    
    
    Defined at ../surface_physics.fpp lines 94-106
    
    """
    def __init__(self, handle=None):
        """
        self = Boundary_Opt_Class()
        
        
        Defined at ../surface_physics.fpp lines 94-106
        
        
        Returns
        -------
        this : Boundary_Opt_Class
        	Object to be constructed
        
        
        Automatically generated constructor for boundary_opt_class
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _SurfacePhysics_pkg.f90wrap_boundary_opt_class_initialise()
    
    def __del__(self):
        """
        Destructor for class Boundary_Opt_Class
        
        
        Defined at ../surface_physics.fpp lines 94-106
        
        Parameters
        ----------
        this : Boundary_Opt_Class
        	Object to be destructed
        
        
        Automatically generated destructor for boundary_opt_class
        """
        if self._alloc:
            _SurfacePhysics_pkg.f90wrap_boundary_opt_class_finalise(this=self._handle)
    
    @property
    def t2m(self):
        """
        Element t2m ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 95
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__t2m(self._handle)
    
    @t2m.setter
    def t2m(self, t2m):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__t2m(self._handle, t2m)
    
    @property
    def tsurf(self):
        """
        Element tsurf ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 96
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__tsurf(self._handle)
    
    @tsurf.setter
    def tsurf(self, tsurf):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__tsurf(self._handle, tsurf)
    
    @property
    def hsnow(self):
        """
        Element hsnow ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 97
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__hsnow(self._handle)
    
    @hsnow.setter
    def hsnow(self, hsnow):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__hsnow(self._handle, hsnow)
    
    @property
    def alb(self):
        """
        Element alb ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 98
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__alb(self._handle)
    
    @alb.setter
    def alb(self, alb):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__alb(self._handle, alb)
    
    @property
    def melt(self):
        """
        Element melt ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 99
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__melt(self._handle)
    
    @melt.setter
    def melt(self, melt):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__melt(self._handle, melt)
    
    @property
    def refr(self):
        """
        Element refr ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 100
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__refr(self._handle)
    
    @refr.setter
    def refr(self, refr):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__refr(self._handle, refr)
    
    @property
    def smb(self):
        """
        Element smb ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 101
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__smb(self._handle)
    
    @smb.setter
    def smb(self, smb):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__smb(self._handle, smb)
    
    @property
    def acc(self):
        """
        Element acc ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 102
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__acc(self._handle)
    
    @acc.setter
    def acc(self, acc):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__acc(self._handle, acc)
    
    @property
    def lhf(self):
        """
        Element lhf ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 103
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__lhf(self._handle)
    
    @lhf.setter
    def lhf(self, lhf):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__lhf(self._handle, lhf)
    
    @property
    def shf(self):
        """
        Element shf ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 104
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__shf(self._handle)
    
    @shf.setter
    def shf(self, shf):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__shf(self._handle, shf)
    
    @property
    def subl(self):
        """
        Element subl ftype=logical pytype=bool
        
        
        Defined at ../surface_physics.fpp line 105
        
        """
        return _SurfacePhysics_pkg.f90wrap_boundary_opt_class__get__subl(self._handle)
    
    @subl.setter
    def subl(self, subl):
        _SurfacePhysics_pkg.f90wrap_boundary_opt_class__set__subl(self._handle, subl)
    
    def __str__(self):
        ret = ['<boundary_opt_class>{\n']
        ret.append('    t2m : ')
        ret.append(repr(self.t2m))
        ret.append(',\n    tsurf : ')
        ret.append(repr(self.tsurf))
        ret.append(',\n    hsnow : ')
        ret.append(repr(self.hsnow))
        ret.append(',\n    alb : ')
        ret.append(repr(self.alb))
        ret.append(',\n    melt : ')
        ret.append(repr(self.melt))
        ret.append(',\n    refr : ')
        ret.append(repr(self.refr))
        ret.append(',\n    smb : ')
        ret.append(repr(self.smb))
        ret.append(',\n    acc : ')
        ret.append(repr(self.acc))
        ret.append(',\n    lhf : ')
        ret.append(repr(self.lhf))
        ret.append(',\n    shf : ')
        ret.append(repr(self.shf))
        ret.append(',\n    subl : ')
        ret.append(repr(self.subl))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    
class Surface_Physics_Class(f90wrap.runtime.FortranDerivedType):
    """
    Type(name=surface_physics_class)
    
    
    Defined at ../surface_physics.fpp lines 108-120
    
    """
    def __init__(self, handle=None):
        """
        self = Surface_Physics_Class()
        
        
        Defined at ../surface_physics.fpp lines 108-120
        
        
        Returns
        -------
        this : Surface_Physics_Class
        	Object to be constructed
        
        
        Automatically generated constructor for surface_physics_class
        """
        f90wrap.runtime.FortranDerivedType.__init__(self)
        self._handle = _SurfacePhysics_pkg.f90wrap_surface_physics_class_initialise()
    
    def __del__(self):
        """
        Destructor for class Surface_Physics_Class
        
        
        Defined at ../surface_physics.fpp lines 108-120
        
        Parameters
        ----------
        this : Surface_Physics_Class
        	Object to be destructed
        
        
        Automatically generated destructor for surface_physics_class
        """
        if self._alloc:
            _SurfacePhysics_pkg.f90wrap_surface_physics_class_finalise(this=self._handle)
    
    @property
    def par(self):
        """
        Element par ftype=type(surface_param_class) pytype=Surface_Param_Class
        
        
        Defined at ../surface_physics.fpp line 111
        
        """
        par_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__par(self._handle)
        if tuple(par_handle) in self._objs:
            par = self._objs[tuple(par_handle)]
        else:
            par = Surface_Param_Class.from_handle(par_handle)
            self._objs[tuple(par_handle)] = par
        return par
    
    @par.setter
    def par(self, par):
        par = par._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__par(self._handle, par)
    
    @property
    def bnd(self):
        """
        Element bnd ftype=type(boundary_opt_class) pytype=Boundary_Opt_Class
        
        
        Defined at ../surface_physics.fpp line 112
        
        """
        bnd_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__bnd(self._handle)
        if tuple(bnd_handle) in self._objs:
            bnd = self._objs[tuple(bnd_handle)]
        else:
            bnd = Boundary_Opt_Class.from_handle(bnd_handle)
            self._objs[tuple(bnd_handle)] = bnd
        return bnd
    
    @bnd.setter
    def bnd(self, bnd):
        bnd = bnd._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__bnd(self._handle, bnd)
    
    @property
    def bnd0(self):
        """
        Element bnd0 ftype=type(boundary_opt_class) pytype=Boundary_Opt_Class
        
        
        Defined at ../surface_physics.fpp line 113
        
        """
        bnd0_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__bnd0(self._handle)
        if tuple(bnd0_handle) in self._objs:
            bnd0 = self._objs[tuple(bnd0_handle)]
        else:
            bnd0 = Boundary_Opt_Class.from_handle(bnd0_handle)
            self._objs[tuple(bnd0_handle)] = bnd0
        return bnd0
    
    @bnd0.setter
    def bnd0(self, bnd0):
        bnd0 = bnd0._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__bnd0(self._handle, bnd0)
    
    @property
    def now(self):
        """
        Element now ftype=type(surface_state_class) pytype=Surface_State_Class
        
        
        Defined at ../surface_physics.fpp line 116
        
        """
        now_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__now(self._handle)
        if tuple(now_handle) in self._objs:
            now = self._objs[tuple(now_handle)]
        else:
            now = Surface_State_Class.from_handle(now_handle)
            self._objs[tuple(now_handle)] = now
        return now
    
    @now.setter
    def now(self, now):
        now = now._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__now(self._handle, now)
    
    @property
    def mon(self):
        """
        Element mon ftype=type(surface_state_class) pytype=Surface_State_Class
        
        
        Defined at ../surface_physics.fpp line 117
        
        """
        mon_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__mon(self._handle)
        if tuple(mon_handle) in self._objs:
            mon = self._objs[tuple(mon_handle)]
        else:
            mon = Surface_State_Class.from_handle(mon_handle)
            self._objs[tuple(mon_handle)] = mon
        return mon
    
    @mon.setter
    def mon(self, mon):
        mon = mon._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__mon(self._handle, mon)
    
    @property
    def ann(self):
        """
        Element ann ftype=type(surface_state_class) pytype=Surface_State_Class
        
        
        Defined at ../surface_physics.fpp line 118
        
        """
        ann_handle = \
            _SurfacePhysics_pkg.f90wrap_surface_physics_class__get__ann(self._handle)
        if tuple(ann_handle) in self._objs:
            ann = self._objs[tuple(ann_handle)]
        else:
            ann = Surface_State_Class.from_handle(ann_handle)
            self._objs[tuple(ann_handle)] = ann
        return ann
    
    @ann.setter
    def ann(self, ann):
        ann = ann._handle
        _SurfacePhysics_pkg.f90wrap_surface_physics_class__set__ann(self._handle, ann)
    
    def __str__(self):
        ret = ['<surface_physics_class>{\n']
        ret.append('    par : ')
        ret.append(repr(self.par))
        ret.append(',\n    bnd : ')
        ret.append(repr(self.bnd))
        ret.append(',\n    bnd0 : ')
        ret.append(repr(self.bnd0))
        ret.append(',\n    now : ')
        ret.append(repr(self.now))
        ret.append(',\n    mon : ')
        ret.append(repr(self.mon))
        ret.append(',\n    ann : ')
        ret.append(repr(self.ann))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    
def surface_energy_and_mass_balance(self, par, bnd, day, year):
    """
    surface_energy_and_mass_balance(self, par, bnd, day, year)
    
    
    Defined at ../surface_physics.fpp lines 139-155
    
    Parameters
    ----------
    now : Surface_State_Class
    par : Surface_Param_Class
    bnd : Boundary_Opt_Class
    day : int
    year : int
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_energy_and_mass_balance(now=self._handle, \
        par=par._handle, bnd=bnd._handle, day=day, year=year)

def energy_balance(self, par, bnd, day, year):
    """
    energy_balance(self, par, bnd, day, year)
    
    
    Defined at ../surface_physics.fpp lines 159-215
    
    Parameters
    ----------
    now : Surface_State_Class
    par : Surface_Param_Class
    bnd : Boundary_Opt_Class
    day : int
    year : int
    
    """
    _SurfacePhysics_pkg.f90wrap_energy_balance(now=self._handle, par=par._handle, \
        bnd=bnd._handle, day=day, year=year)

def mass_balance(self, par, bnd, day, year):
    """
    mass_balance(self, par, bnd, day, year)
    
    
    Defined at ../surface_physics.fpp lines 232-387
    
    Parameters
    ----------
    now : Surface_State_Class
    par : Surface_Param_Class
    bnd : Boundary_Opt_Class
    day : int
    year : int
    
    """
    _SurfacePhysics_pkg.f90wrap_mass_balance(now=self._handle, par=par._handle, \
        bnd=bnd._handle, day=day, year=year)

def surface_physics_average(self, now, step, nt=None):
    """
    surface_physics_average(self, now, step[, nt])
    
    
    Defined at ../surface_physics.fpp lines 577-610
    
    Parameters
    ----------
    ave : Surface_State_Class
    now : Surface_State_Class
    step : str
    nt : unknown
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_physics_average(ave=self._handle, \
        now=now._handle, step=step, nt=nt)

def surface_alloc(self, npts):
    """
    surface_alloc(self, npts)
    
    
    Defined at ../surface_physics.fpp lines 645-689
    
    Parameters
    ----------
    now : Surface_State_Class
    npts : int
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_alloc(now=self._handle, npts=npts)

def surface_dealloc(self):
    """
    surface_dealloc(self)
    
    
    Defined at ../surface_physics.fpp lines 692-736
    
    Parameters
    ----------
    now : Surface_State_Class
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_dealloc(now=self._handle)

def surface_physics_par_load(self, filename):
    """
    surface_physics_par_load(self, filename)
    
    
    Defined at ../surface_physics.fpp lines 739-825
    
    Parameters
    ----------
    par : Surface_Param_Class
    filename : str
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_physics_par_load(par=self._handle, \
        filename=filename)

def surface_boundary_define(self, boundary):
    """
    surface_boundary_define(self, boundary)
    
    
    Defined at ../surface_physics.fpp lines 829-886
    
    Parameters
    ----------
    bnd : Boundary_Opt_Class
    boundary : str array
    
    """
    _SurfacePhysics_pkg.f90wrap_surface_boundary_define(bnd=self._handle, \
        boundary=boundary)

def print_param(self):
    """
    print_param(self)
    
    
    Defined at ../surface_physics.fpp lines 889-923
    
    Parameters
    ----------
    par : Surface_Param_Class
    
    """
    _SurfacePhysics_pkg.f90wrap_print_param(par=self._handle)

def print_boundary_opt(self):
    """
    print_boundary_opt(self)
    
    
    Defined at ../surface_physics.fpp lines 926-940
    
    Parameters
    ----------
    bnd : Boundary_Opt_Class
    
    """
    _SurfacePhysics_pkg.f90wrap_print_boundary_opt(bnd=self._handle)

def get_sigm():
    """
    Element sigm ftype=double precision pytype=unknown
    
    
    Defined at ../surface_physics.fpp line 20
    
    """
    return _SurfacePhysics_pkg.f90wrap_surface_physics__get__sigm()

sigm = get_sigm()

def get_eps():
    """
    Element eps ftype=double precision pytype=unknown
    
    
    Defined at ../surface_physics.fpp line 21
    
    """
    return _SurfacePhysics_pkg.f90wrap_surface_physics__get__eps()

eps = get_eps()

def get_cls():
    """
    Element cls ftype=double precision pytype=unknown
    
    
    Defined at ../surface_physics.fpp line 23
    
    """
    return _SurfacePhysics_pkg.f90wrap_surface_physics__get__cls()

cls = get_cls()

def get_clv():
    """
    Element clv ftype=double precision pytype=unknown
    
    
    Defined at ../surface_physics.fpp line 25
    
    """
    return _SurfacePhysics_pkg.f90wrap_surface_physics__get__clv()

clv = get_clv()

def get_cap():
    """
    Element cap ftype=double precision pytype=unknown
    
    
    Defined at ../surface_physics.fpp line 26
    
    """
    return _SurfacePhysics_pkg.f90wrap_surface_physics__get__cap()

cap = get_cap()


_array_initialisers = []
_dt_array_initialisers = []

try:
    for func in _array_initialisers:
        func()
except ValueError:
    logging.debug('unallocated array(s) detected on import of module \
        "surface_physics".')

for func in _dt_array_initialisers:
    func()
