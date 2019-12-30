from argparse import ArgumentParser

import logging
import os
import sys

import matplotlib.pyplot as plt
import mpl_toolkits.mplot3d.axes3d as axes3d
import numpy as np
import scipy.integrate
import scipy.optimize


CONST_C = 299792458
"""float: c (ms^1), universal physical constant for speed of light in a vacuum.

"""

CONST_K = 1.38064852e-23
"""float: k (J K^-1), Boltzmann constant.

"""

CONST_ROOM_TEMP = 298
"""int: T_25 (K), Room temperature in Kelvin.

"""

CONST_MU_0 = 1.2566370614e-6
"""float: \mu_0 (H m^{-1}), Permeability of free space 

"""

CONST_POES_NOAA_15_ORBIT_HEIGHT = 807e3
"""float: d_{NOAA-15} (m), NOAA-15 orbit height

"""

CONST_POES_NOAA_18_ORBIT_HEIGHT = 854e3
"""float: d_{NOAA-18} (m), NOAA-18 orbit height

"""

CONST_POES_NOAA_19_ORBIT_HEIGHT = 870e3
"""float: d_{NOAA-19} (m), NOAA-19 orbit height

"""

CONST_F_NOMINAL = 137e6
"""float: f_{nom} (Hz), Nominal APT transmission frequency

"""

CONST_LAMBDA_0 = CONST_C / CONST_F_NOMINAL
"""float: \lambda_{0} (m), Nominal APT transmission free-space wavelength

"""

CONST_SLANT_ANGLE = 30
"""float: \theta_{s} (degrees), 
       Worst case angle between a direct overhead pass and
       the actual vehicle pass.
"""

DEBUG_LOG = False
"""bool: DEBUG_LOG , switch on verbose logging."""



def compute_r_e(v_e, i_e):

    r_e = v_e / i_e

    return r_e


def compute_r_c(v_cc, v_c, i_c):

    r_c = (v_cc - v_c) / i_c

    return r_c



def compute_v_bb(v_e, v_be):

    v_bb = v_e + v_be

    return v_bb



def compute_r_1(v_bb, i_bb):

    r_1 = v_bb / i_bb

    return r_1



def compute_r_2(v_cc, v_bb, i_bb, i_b):

    r_2 = (v_cc - v_bb) / (i_bb + i_b)

    return r_2


def main():

    v_cc = 6.0      # might need to look at this again
    i_bb = 1e-3     # fix this for some 'stiff' biasing
    i_b = 18.5e-6   # from implied beta (i_b vs i_c curve @ 3V V_CE)
    i_e = i_c = 6.0e-3  # from the high beta assumption
    v_c = 5.00      # above mid-point of V_CC
    v_e = 2.0  
    v_be = 0.782    # active region as computed from Vbe-Ic curve
    r_e = compute_r_e(v_e, i_e)
    r_c = compute_r_c(v_cc, v_c, i_c)
    v_bb = compute_v_bb(v_e, v_be)
    r_1 = compute_r_1(v_bb, i_bb)
    r_2 = compute_r_2(v_cc, v_bb, i_bb, i_b)

    print("R_E = {0}\nR_C = {1}\nV_BB = {2}\nR_1 = {3}\nR_2 = {4}"
          .format(r_e, r_c, v_bb, r_1, r_2))


if __name__ == '__main__':
    status = main()
    sys.exit(status)
