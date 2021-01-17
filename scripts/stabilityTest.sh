#!/bin/bash
export COMMENTS=F/2.5

oneCmd.py iic bias name=stabilityTest
echo
oneCmd.py iic dark exptime=300 name=stabilityTest
echo
oneCmd.py iic scienceTrace halogen=3.0 name=stabilityTest  comments=$COMMENTS
echo
oneCmd.py iic scienceArc argon=45 name=stabilityTest  comments=$COMMENTS
echo
oneCmd.py iic scienceArc neon=15 name=stabilityTest  comments=$COMMENTS
echo
oneCmd.py iic scienceArc krypton=45 name=stabilityTest  comments=$COMMENTS
echo
oneCmd.py iic scienceArc hgar=5.0 name=stabilityTest  comments=$COMMENTS
echo