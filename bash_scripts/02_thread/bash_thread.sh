#!/bin/bash
##########################################
#
#	Resource: http://opennomad.com/content/parallelism-or-multiple-threads-bash
#
##########################################
OUTPUT="/tmp/.test"
#OUTPUT="./.test"
mkfifo $OUTPUT &> /dev/null 

# this is the slow running function
slow () {
  echo "begin $1"
  sleep 3;
  echo "slow $1" > $OUTPUT &
  echo "end $1"
}

# here the function is spwaned
for x in {1..3} ; do
  echo "spawn $x";
  slow $x &
done

# we wait for all the child processes to finish
echo waiting
wait
echo done waiting

# then we read the output
cat $OUTPUT
rm $OUTPUT
