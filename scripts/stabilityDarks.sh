#!/bin/bash

# one masterBias set, and one ~15min masterDark set.
# Both commands default to 3 duplicates, and wipe+readout time is ~60s, so
# ask for 150s darks, yielding 15min total dark.
#
# 2024.02 --- Being red camera warmed up, exclude them
# 2024.02.24 --- b3 failed, and n1 warmped up, exclude them
oneCmd.py --timelim=1000 iic bias cam=b1,b2,b4,r1,r2,r3,r4 duplicate=3 name=stabilityDarks
echo
oneCmd.py --timelim=6500 iic dark cam=b1,b2,b4,r1,r2,r3,r4,n2,n3 exptime=150 duplicate=3 name=stabilityDarks
echo
