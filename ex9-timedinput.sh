#!/bin/bash
# ex9-timedinput.sh
# author: liubida

# Usage:
# Admittedly, this is a kludgy implementation of timed input.
# However, the "-t" option to "read" simplifies this task.
# However, what about timing not just single user input,
# but an entire script?

TIMER_INTERRUPT=14
TIMELIMIT=5

print_answer(){
    if [[ "$answer" == "TIMEOUT" ]]; then
        echo $answer
    else
        echo "the job is done."
        # $! is PID of last job running in background
        kill $!
    fi
}

time_on(){
    # Waits 3 seconds, then sends sigalarm to script.
    sleep $TIMELIMIT && kill -s $TIMER_INTERRUPT $$ &
}

int14_vector(){
    echo "accept the TIMER_INTERRUPT: $TIMER_INTERRUPT"
    answer="TIMEOUT"
    print_answer
    exit $TIMER_INTERRUPT
}

# Timer interrupt (14) subverted for our purposes.
trap int14_vector $TIMER_INTERRUPT

echo "the job is running... "
time_on
while [[ 1 ]]; do
    echo $SECONDS
    sleep 1
done
print_answer

exit 0

