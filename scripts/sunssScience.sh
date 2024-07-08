COMMENTS=SuNSS_science_sequence

# We need to be told what the possible exposure time is. From that, we
# subtract two full biases and one readout time. We need the biases to
# help remove the r1 signal accumulated during readout with the
# shutter open, and we need to still be on the fields until the end of
# the bias readout.
#
exptime=$1
ourExptime=$(python -c "print($exptime - 3")

oneCmd.py iic bias name=SuNSS_prebias $COMMENTS
oneCmd.py iic scienceObject exptime=$ourExptime name=SuNSS_science $COMMENTS
oneCmd.py iic bias name=SuNSS_postbias $COMMENTS

