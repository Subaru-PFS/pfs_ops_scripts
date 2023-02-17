#!/bin/bash

# user inputs
export SPECNUM=3
export NAME=stabilityTestFast


oneCmd.py iic scienceArc neon=3 specNum=$SPECNUM name=$NAME
echo
oneCmd.py iic scienceArc hgar=4 specNum=$SPECNUM name=$NAME
echo