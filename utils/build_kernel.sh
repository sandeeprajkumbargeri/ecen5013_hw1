#!/bin/bash
#
# File Name: build_kernel.sh 
# Author: Sandeep Raj Kumbargeri <sandeep.kumbargeri@colorado.edu>
# Written for ECEN 5013 in Spring 2018 at University of Colorado Boulder.
# Description: This is an automated script to build the kernel from source.
# Tools: This is a bash script written using gedit text editor.

# Script start

cd /usr/src/linux-$1/			# Take the first input at the command line to be kernal version and go to that directory

NUM_OF_JOBS=$2				# Take the number of jobs (recommended: 2 x number of cores available)

# 					In the folllwing commands -j is used to start NUM_OF_JOBS to execute the task

make -j$NUM_OF_JOBS			# Compile the kernel
make modules -j$NUM_OF_JOBS		# Compile the kernel modules
make modules_install -j$NUM_OF_JOBS	# Install the kernel modules
make install -j$NUM_OF_JOBS		# Install the kernel

echo -en "Kernel v$1, if succussfully installed.. Restart the machine to boot to it using GRUB\n"	# Print the end of script message

# End of the script
