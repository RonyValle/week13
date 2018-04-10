#!/bin/bash
#
# SCRIPT: Chapter13 Shell Script
# AUTHOR: Rony_Valle_Lopez
# DATE: April_09_2018

press_enter()
{
    echo -en "\nPress Enter to continue"
    read
    clear
}

number=

until [ "$number" = "0" ]; do
  	echo "
	Would you like to see your .bashrc file?
	1 - Yes, show me the file

	0 - exit program
"

	echo -n "Enter your Option: "
	read number
	echo ""

	case "$number" in
	    1 ) echo "Here is your .bashrc file:" ; cat ~/.bashrc ; press_enter ;;
	    0 ) exit ;;
	    * ) echo "Please enter 0 or 1" ; press_enter
	esac
done
