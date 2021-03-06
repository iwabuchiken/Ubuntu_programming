#!/bin/bash
#==============================
#
#	File: 02_read_parameters.sh
#	Created at: 
#
#
#
#
#==============================


#echo $#

#==============================
#
#
#
#==============================

#if [ $# -ne 1 -o $# -gt 3 ]
if [ $# -lt 1 -o $# -gt 3 ]
then
	echo "Usage: [package name] [class name]"
	echo "	e.g. [command] p1 E5.classa"
else
	echo $1 $2
	echo "\$@=" $@
	ary=( $@ )
	echo $ary
	echo ${#ary[@]}

	for item in $ary; do
		echo item=$item
	done

	len=${#ary[@]}
#	for i in {0.."$len"}
	for i in {0..`expr $len + 0`}
		do
		echo $i
		done
	
	for i in {1..3}; do
		echo $i
	done

	echo `expr $len + 1`
	
	echo "<4>"
	for i in "${ary[@]}"; do
		echo $i
	done
	

fi

#==============================
#
#
#
#==============================




#==============================
#
#
#
#==============================

