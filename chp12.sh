#!/bin/bash
#
# SCRIPT: Chapter12 Shell Script
# AUTHOR: Rony_Valle_Lopez
# DATE: April_08_2018

clear

#Script that creates a directory and file on your home directory
#and gives access to it over the local network.
cd ~
mkdir confidential
cd confidential
touch file1
python -m SimpleHTTPServer

# Using rsync to transfer data from one machine to another.
# The --progress lets see the progress of the transfer
# This is made up data so it will not work..Try your own valid data

rsync -nva ssh --progress /home/confidential rony@190.158.2.103:rony/confidential

# Excluding .md files

rsync -a --exclude=.md confideltial rony@190.158.2.103:

# Using the Samba client(Made up info)

smbclient -L -U username SERVERC

# Mount Remote Directory on a server with NFS

mount -t nfs serverc:confidential home/blank
