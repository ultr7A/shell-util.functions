#!/bin/bash
#

# Shortcuts:
function re_rc() {
    source "~/.bashrc";
}

function edit_rc() {
    nano   "~/.bashrc";
}

function inst() {
    if [ ! -d "/usr/bin/apt" ] 
    then
        echo "Installing $1";
        apt install "$1";
    fi
}