#!/usr/bin/env python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt
from scipy.io import netcdf
import os
from cdo import *
import shutil
from echam6_calculate_air_density import calculate_density


CDO = Cdo()

def get_echam6_output():
    e6_output = shutil.copy2("/home/ollie/pgierz/palmod_ebm/echam6_output/EXAMPLE_echam6_echam_1850.nc", os.getcwd()+"/semic_input.nc")
    return os.getcwd()+"/semic_input.nc"

def extract_semic_forcing_from_forcing(fin):
    # Handle the easy ones:
    varlist = ["aprs", "aps", "trads", "srads", "wind10", "q"]
    semic_names = {
        "sf": "aprs",
        "rf": None,
        "sp": "aps",
        "lwd": "trads",
        "swd": "srads",
        "wind": "wind10",
        "rhoa": None,
        "qq": "q",
        "mask": None
    }
    semic_names_inverse = {
        "aprs": "sf",
        "aps": "sp",
        "trads": "lwd",
        "srads": "swd",
        "wind10": "wind",
        "q": "qq"
    }
    for v in varlist:
        CDO.selname(v, input=fin, output=fin.replace(".nc", "_"+semic_names_inverse[v]+".nc"))

    # Handle rhoa
    ifile = netcdf.netcdf_file(fin, "r")
    pressure = ifile.variables["aps"].data.squeeze()
    temperature = ifile.variables["temp2"].data.squeeze()
    relative_humidity = ifile.variables["rhumidity"].data[:, -1, :, :].squeeze()
    # PG: Get the relative humidity of the BOTTOM layer (last). This might need to change!!
    rho = calculate_density(pressure, temperature, relative_humidity)
    shutil.copy(fin.replace(".nc", "_"+semic_names_inverse["aprs"]+".nc"), fin.replace(".nc", "_rhoa.nc"))
    fout = netcdf.netcdf_file(fin.replace(".nc", "_rhoa.nc"), "a")
    fout_name = fout.filename
    rho_file = fout.createVariable("rhoa", "f", ifile.variables["aprs"].dimensions)
    rho_file[:] = rho
    fout.sync()
    fout.close()
    CDO.delvar("aprs", input=fout_name, output="tmp.nc")
    shutil.move("tmp.nc", fout_name)
    
    # Handle SEMIC rf
    CDO.sub(input="-selvar,aprs "+fin+" -add -selvar,aprl "+fin+" -selvar,aprc "+fin,
            output=fin.replace(".nc", "_rf.nc"),
            options="-P 28")


def interpolate_semic_forcing_to_pism_grid(fin_basename):
    varlist = ["sf", "rf", "sp", "lwd", "swd", "wind", "rhoa", "qq"]
    for v in varlist:
        CDO.remapcon("/work/ollie/pgierz/pool_pism/grids/greenland/pismr_greenland_20km.griddes",
                     input=fin_basename+"_"+v+".nc",
                     output=fin_basename+"_"+v+"_pism20km_remapcon.nc",
                     options="-P 28")
    
def main():
    input = get_echam6_output()
    extract_semic_forcing_from_forcing(input)
    interpolate_semic_forcing_to_pism_grid(input.replace(".nc", "")) 

if __name__ == '__main__':
    main()
