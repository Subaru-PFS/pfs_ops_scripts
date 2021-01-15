#!/bin/bash

# one masterBias set, and one ~2h masterDark set.

oneCmd.py iic masterBias duplicate=11 comments=daily
echo
oneCmd.py iic masterDark exptime=600 duplicate=11 comments=daily
echo
