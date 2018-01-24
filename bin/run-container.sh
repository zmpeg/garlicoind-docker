#!/bin/bash
#
# run-container.sh
#
# This is a simple helper script to kick-off a container exection. Ensure the container is set.
# This script will read the following environment variables.
#   DEBUG       Gives a prompt in the container instead of running the container.

CONTAINER="zmpeg/garlicd"
mkdir -p data

if [ ! -z ${DEBUG+x} ] && $DEBUG; then
  echo "debug mode"
  DEBUG="--entrypoint /bin/bash"
else
  DEBUG=""
fi

DATA_MOUNT="-v "`pwd`"/data:/root/.garlicoin"
OPTIONS="${DEBUG} ${DATA_MOUNT}"
COMMAND="docker run ${OPTIONS} -ti ${CONTAINER} ${@}"

eval $COMMAND
