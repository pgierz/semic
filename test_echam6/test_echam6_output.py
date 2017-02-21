import numpy as np
import matplotlib.pyplot as plt
import SurfacePhysics as sp
from echam6_calculate_air_density import calculate_density
from scipy.io import netcdf

# read data
# PG: do a 1 year test with echam6 output
echam6_output_file = netcdf.netcdf_file("/Users/pgierz/Research/PalMod_ebm/echam6_output/EXAMPLE_echam6_echam_1850.nc")
fin = echam6_output_file
pressure = fin.variables["aps"].data.squeeze()
temperature = fin.variables["temp2"].data.squeeze()
relative_humidity = fin.variables["rhumidity"].data[:, -1, :, :].squeeze()

e6_sf = echam6_output_file.variables["aprs"].data.squeeze()
e6_rf = echam6_output_file.variables["aprl"].data.squeeze() + echam6_output_file.variables["aprc"].data.squeeze() - e6_sf
e6_lwd = echam6_output_file.variables["trads"].data.squeeze() 
e6_swd = echam6_output_file.variables["srads"].data.squeeze() 
e6_wind = echam6_output_file.variables["wind10"].data.squeeze() 
e6_sp = echam6_output_file.variables["aps"].data.squeeze()
e6_rhoa = calculate_density(pressure, temperature, relative_humidity)
e6_qq = echam6_output_file.variables["q"].data[:, -1, :, :].squeeze()
e6_tt = echam6_output_file.variables["temp2"].data.squeeze()
e6_ts = echam6_output_file.variables["tsurf"].data.squeeze()
e6_alb = echam6_output_file.variables["albedo"].data.squeeze()
nx = e6_sf.shape[1] * e6_sf.shape[2]
ntime = e6_sf.shape[0]
pre = "transect"
# forc = np.loadtxt('../example/data/'+pre+'_input.txt')
vali = np.loadtxt('../example/data/'+pre+'_output.txt')
var_names = ['tsurf', 'alb', 'swnet', 'smb', 'melt', 'acc', 'shf', 'lhf']
# nx    = forc.shape[1]/len(var_names)
# ntime = forc.shape[0]
# print(nx, ntime)
# Load parameters from Fortran Namelist
par = sp.surface_physics.Surface_Param_Class()
sp.surface_physics.surface_physics_par_load(par,'test.nml')
par.nx = nx
sp.surface_physics.print_param(par)

# initialize boundary class
bnd = sp.surface_physics.Boundary_Opt_Class()
sp.surface_physics.surface_boundary_define(bnd,par.boundary)
sp.surface_physics.print_boundary_opt(bnd)

# initialize and allocate state class
state = sp.surface_physics.Surface_State_Class()
sp.surface_physics.surface_alloc(state,par.nx)

# set initial values for prognostic & diagnostic variables
state.tsurf = np.array([e6_ts[0, :, :].reshape(-1)[i] for i in range(par.nx)])
state.hsnow = np.array([1.0 for i in range(par.nx)])
state.hice = np.array([0.0 for i in range(par.nx)])
state.alb = np.array([e6_alb[0,:, :].reshape(-1)[i] for i in range(par.nx)])
state.alb_snow = np.array([e6_alb[0, :, :].reshape(-1)[i] for i in range(par.nx)])
# set auxiliary variables to zero
state.qmr = np.array([0.0 for i in range(par.nx)])
state.qmr_res = np.array([0.0 for i in range(par.nx)])
state.lhf = np.array([0.0 for i in range(par.nx)])
state.shf = np.array([0.0 for i in range(par.nx)])
# set land/ice/ocean mask
state.mask = np.array([2 for i in range(par.nx)])
if nx > 1: state.mask[0:3] = 1

y1 = {v: np.zeros((par.nx,ntime)) for v in var_names}
# for y in range(nyears):
for t in range(ntime):
    state.sf   = e6_sf[t, :, :].reshape(-1) 
    state.rf   = e6_rf[t, :, :].reshape(-1) 
    state.swd  = e6_swd[t, :, :].reshape(-1) 
    state.lwd  = e6_lwd[t, :, :].reshape(-1) 
    state.wind = e6_wind[t, :, :].reshape(-1) 
    state.sp   = e6_sp[t, :, :].reshape(-1) 
    state.rhoa = e6_rhoa[t, :, :].reshape(-1)  
    state.qq   = e6_qq[t, :, :].reshape(-1) 
    state.tt   = e6_tt[t, :, :].reshape(-1) 

    # calculate surface energy and mass balance
    y=1
    sp.surface_physics.surface_energy_and_mass_balance(state,par,bnd,t,y)

#         # write output for last year
#         if y == nyears-1:
    y1['tsurf'][:,t] = state.tsurf
    y1['alb'][:,t] = state.alb
    # y1['swnet'][:,t] = (1.-state.alb)*y2['swnet'][:,t]
    y1['smb'][:,t] = state.smb
    y1['melt'][:,t] = state.melt
    y1['acc'][:,t] = state.acc
    y1['shf'][:,t] = state.shf
    y1['lhf'][:,t] = state.lhf

print y1
# var = 'smb'
# for n in range(nx):
#     l, = plt.plot(time,y1[var][n,:],lw=2,label=n+1)
#     plt.plot(time,y2[var][n,:],lw=2,c=l.get_color(),ls='--')
# plt.xlim(0,12)
# plt.grid()
# plt.legend(loc=0)


# print np.mean(y1[var] - y2[var])

# plt.show()
