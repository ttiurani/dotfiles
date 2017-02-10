#!/bin/sh

# The path to the chrome binary
JAVA_BINARY=/usr/lib/

# As long as this is set to 1 the script will
# block at the end
RUNNING=1

get_java_binary_pid ()
{
  local child_pids=$(ps -o pid= --ppid "$1")

  for pid in $child_pids
  do
    ps -p $pid -o cmd= | grep -q $JAVA_BINARY 2> /dev/null

    if [ "$?" -eq "0" ]; then
      echo $pid
    else
      get_java_binary_pid "$pid"
    fi
  done
}

function exit_wrapper() 
{
   # kill the java binary
   kill $(get_java_binary_pid $$)

   # kill myself
   RUNNING=0
}

# Handle any incoming signals
trap "exit_wrapper" SIGHUP SIGINT SIGTERM

# Run eclimd headless
Xvfb :1 -screen 0 1024x768x24 &
xvfb_pid=$!
DISPLAY=:1 ~/eclipse/eclimd -b

# Wait for the signal to exit
while [ "$RUNNING" -eq "1" ]
do
  sleep 1
done

wait $xvfb_pid
xvfb_exit_code=$?

echo eclimd exit code=$xvfb_exit_code
exit $xvfb_exit_code
