#!/bin/bash
# ex9-pid.sh
# author: liubida


# Usage:

command="sleep 100"
${command} &
echo "the last background job's pid: " $!

hanging_job(){
    while [[ 1 ]]; do
        echo $SECONDS
        sleep 1
    done
}

time_out=6
hanging_job &
job_pid=$!

echo $job_pid
sleep $time_out; 
kill -9 $job_pid

exit 0

