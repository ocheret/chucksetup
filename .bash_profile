#!/usr/bin/env bash
#
# Bash runtime configuration file
#

[[ -r ~/.bashrc ]] && . ~/.bashrc


# opam configuration
test -r /Users/chuck/.opam/opam-init/init.sh && . /Users/chuck/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
. "$HOME/.cargo/env"
