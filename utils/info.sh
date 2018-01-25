#!/bin/bash

# File Name: info.sh
# Author: Sandeep Raj Kumbargeri
# Written for ECEN 5013 Advanced Practical Embedded Software Development course in Spring 2018
# at the University of Colorado Boulder.
#
# This is a bash script which automates the following actions:
#   1. Creating the file specified by the user after the script
#   2. Writes the following information into it:
#	* User Information
#	* Operating System Type
#	* OS Distribution
#	* OS Version
#	* Kernel Version
#	* Kernel GCC Version
#	* Kernel Build Time
#	* System Architecture
#	* Information on File Systems Memory
#
# Tools used: This is a bash script written using gedit text editor


# Script begins here

id &> $1			# User Information
echo \ &>> $1

uname -s &>> $1			# Operating System Type
echo \ &>> $1

lsb_release -id &>> $1		# OS Distribution
echo \ &>> $1

lsb_release -r &>> $1		# OS Version
echo \ &>> $1

uname -r &>> $1			# Kernel Version
echo \ &>> $1

cat /proc/version &>> $1	# Kernel GCC Version
echo \ &>> $1

uname -v &>> $1			# Kernel Build Time
echo \ &>> $1

uname -i &>> $1			# System Architecture
echo \ &>> $1

df -T &>> $1			# Information on File System Memory
echo \ &>> $1

# Script ends here
