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



class LinkBudget(object):
    P_TX = 37.0   # transmitter output power (dBm)
                  # lump everything here as we know an EIRP only
    G_TX =  0.0   # transmitter antenna gain
    L_TX =  0.0   # transmitter losses
    L_FS =  0.0   # free-space path loss
    L_M  =  0.0   # miscellaneous losses
    G_RX =  0.0   # receiver antenna gain (a range for off-axis of our QFH antenna)
    L_RX =  0.0   # receiver losses

    def l_fs(self, d, lambda_0):

        self.L_FS = 20 * np.log10(4 * np.pi * d / lambda_0)

        return self.L_FS


    def p_a(self):

        self.P_RX = self.P_TX + self.G_TX - self.L_TX      \
                    - self.L_FS - self.L_M + self.G_RX - self.L_RX 

        return self.P_RX


def d_worst_case(d, slant_angle):

    d_prime = d * np.cos(slant_angle)

    return d_prime


def compute_snr_earth_surface():

    linkBudget = LinkBudget()

    linkBudget.l_fs(CONST_POES_NOAA_15_ORBIT_HEIGHT, CONST_LAMBDA_0)
    p_a_best = linkBudget.p_a()

    d_prime = d_worst_case(CONST_POES_NOAA_19_ORBIT_HEIGHT, np.deg2rad(CONST_SLANT_ANGLE))
    linkBudget.l_fs(d_prime, CONST_LAMBDA_0)
    p_a_worst = linkBudget.p_a()

    print("P_a \in [{0},{1}] dBm ".format(p_a_worst, p_a_best))

    return [p_a_worst, p_a_best]


def main():
    compute_snr_earth_surface()

if __name__ == '__main__':
    status = main()
    sys.exit(status)
