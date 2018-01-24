#!/bin/sh

# Start Daemon
garlicoind --daemon

# Wait for debug file to exist
while [ ! -f /root/.garlicoin/debug.log ]
do
  sleep 1
done

# Follow debug log
tail -f ~/.garlicoin/debug.log
