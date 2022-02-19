#!/bin/bash


function __code_gen__forLoop() {
    
    (IFS='
'
    for x in `$1`; 
        do echo $x;
    done)
}