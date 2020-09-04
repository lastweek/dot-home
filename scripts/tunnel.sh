HOST_NR=$1
PORT_LOCAL=$2
PORT_REMOTE=$3
CMD="ssh -p 456 -L $PORT_LOCAL:localhost:$PORT_REMOTE ys@wuklab-$HOST_NR.sysnet.ucsd.edu"
echo $CMD
$CMD
