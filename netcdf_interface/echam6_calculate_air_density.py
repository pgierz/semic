#!/usr/bin/env python
"""
Calculates the density of air baed upon the Ideal Gas Law and the Magnus Equation
"""

import argparse
import numpy as np
from scipy.io import netcdf
import math
import os

def calculate_density(pressure, temperature, relative_humidity):
    Rl = 287.058                # R for luft (dry air), [J/kg/K]
    Rd = 461.523                # R for dampf (water vapour), [J/kg/K]
    def Magnus(temperature):
        # See http://dx.doi.org/10.1175/1520-0450(1996)035%3C0601:IMFAOS%3E2.0.CO;2
        temperature_celsius = temperature - 273.15
        # if not (-40.0 < temperature_celsius) and not (temperature_celsius < 50.0):
        #     print("WARNING: The Magnus Equation may deliver incorrect results for the temperature used: %s" % str(temperature_celsius))
        return 6.1094 * math.e**((17.625 * temperature_celsius)/(temperature_celsius + 243.04))
    saturation_pressure = Magnus(temperature)
    Rf = (Rl) / (1.0 - relative_humidity * (saturation_pressure/pressure) * (1 - (Rl/Rd)))
    rho = pressure / (Rf * temperature)
    return rho

def parse_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("ifile")
    parser.add_argument("ofile")
    return parser.parse_args()

if __name__ == "__main__":
    args = parse_arguments()
    fin = netcdf.netcdf_file(args.ifile, "r")
    os.system("cp "+args.ifile+" "+args.ofile)
    fout = netcdf.netcdf_file(args.ofile, "a")
    rho_file = fout.createVariable("rhoa", "f", fin.variables["temp2"].dimensions)
    pressure = fin.variables["aps"].data.squeeze()
    temperature = fin.variables["temp2"].data.squeeze()
    relative_humidity = fin.variables["rhumidity"].data[:, -1, :, :].squeeze()
    # PG: Get the relative humidity of the BOTTOM layer (last). This might need to change!!
    rho = calculate_density(pressure, temperature, relative_humidity)
    rho_file[:] = rho
    fout.sync()
    fout.close()

