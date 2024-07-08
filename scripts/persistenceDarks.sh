#!/bin/bash

# 900s dark on n band for persistence sake.
oneCmd.py --timelim=1000 iic dark cam=n1 exptime=900 name=persistenceDarks
echo
