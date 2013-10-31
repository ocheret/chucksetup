#!/usr/bin/env bash
#
# Bash runtime configuration file
#

source ~/.bashenv

umask 022

source ~/.bashpath
source ~/.bashaliases
source ~/.bashfunctions

if [ -f ~/git-completion.bash ]
then    source ~/git-completion.bash
        PS1='[\h:\W$(__git_ps1 " (%s)")]\!\$ '
else    PS1='\h:\W \!\$ '
fi

localrc=$HOME/.bashrc-$(hostname -s)
if [ -f $localrc ]
then    source $localrc
fi
