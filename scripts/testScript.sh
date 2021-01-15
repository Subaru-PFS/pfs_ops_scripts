# Do not do anything, just print some perhaps useful goo for the log
#
echo args: "$@"
echo PATH=$PATH
echo PYTHONPATH=$PYTHONPATH
eups list -s

python -V
which python

oneCmd.py hub actors
