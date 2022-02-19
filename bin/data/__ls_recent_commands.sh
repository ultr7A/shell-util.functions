#!/bin/bash

function __ls_recent_commands() {
    cat ~/.bash_history | egrep -iE "$1"    
}