#!/bin/bash

# user inputs
export SPECNUM=3
export NAME=stabilityTest

oneCmd.py iic bias specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic dark exptime=300 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceTrace halogen=30 arm=b specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic bias specNum=$SPECNUM name=$NAME comments=$COMMENTS
echo
oneCmd.py iic scienceTrace halogen=3 arm=r specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceArc argon=4 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceArc neon=3 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceArc hgar=4 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceArc krypton=60 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic bias specNum=$SPECNUM name=$NAME
echo
