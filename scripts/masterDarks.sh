#!/bin/bash

# one masterBias set, and one ~2h masterDark set.
# Both commands default to 15 duplicates, and wipe+readout time is ~60s, so
# ask for 360s darks, yielding 90min total dark.
#
oneCmd.py --timelim=1000 iic masterBiases comments=daily
echo
oneCmd.py --timelim=6500 iic masterDarks exptime=360 comments=daily
echo
