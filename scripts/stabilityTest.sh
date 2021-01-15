#!/bin/bash

oneCmd.py iic bias comments=stabilityTest
echo
oneCmd.py iic dark exptime=300 comments=stabilityTest
echo
oneCmd.py iic scienceTrace halogen=3.0 comments=stabilityTest
echo
oneCmd.py iic scienceArc argon=45 comments=stabilityTest
echo
oneCmd.py iic scienceArc neon=15 comments=stabilityTest
echo
oneCmd.py iic scienceArc krypton=45 comments=stabilityTest
echo
oneCmd.py iic scienceArc hgar=5.0 comments=stabilityTest
echo

