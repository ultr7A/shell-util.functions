#!/bin/bash

function classic() {
    $(__ls_recent_commands $1 1);    
}