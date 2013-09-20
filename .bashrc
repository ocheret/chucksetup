#!/usr/bin/env bash
#
# Bash runtime configuration file
#

source ~/.bashenv

umask 022

source ~/.bashpath
source ~/.bashaliases
source ~/.bashfunctions

PS1='\h:\W \!\$ '

localrc=$HOME/.bashrc-$(hostname -s)
if [ -f $localrc ]
then    source $localrc
fi
