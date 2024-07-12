#!/bin/bash

# user inputs
export SPECNUM=3
export CAM=b1,r1,b2,r2,n2,r3,n3,b4,r4
export NAME=IIS
export COMMENT=stability

oneCmd.py sps iis on=neon warmingTime=180
echo
oneCmd.py iic scienceArc exptime=1 duplicate=2 name=$NAME comments=$COMMENT
echo
oneCmd.py sps iis off=neon
echo
oneCmd.py sps iis on=krypton warmingTime=180
echo
oneCmd.py iic scienceArc exptime=1 duplicate=2 name=$NAME comments=$COMMENT
echo
oneCmd.py sps iis off=krypton
echo
oneCmd.py sps iis on=halogen warmingTime=180
echo
oneCmd.py iic scienceTrace exptime=20 noLampCtl duplicate=2 name=$NAME comments=$COMMENT
echo
oneCmd.py sps iis off=halogen
echo
