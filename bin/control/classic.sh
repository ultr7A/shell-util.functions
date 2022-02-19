#!/bin/bash

function classic() {
    $(__ls_recent_commands $1 | head -n 1);    
}