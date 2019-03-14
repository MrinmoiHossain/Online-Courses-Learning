#!/bin/sh

test_fun1(){
    var=FUN_VAR
    shift
    echo "   PARS after fun shift:   $0 $1 $2 $3 $4 $5"
}

var=MAIN_VAR
echo ’ ’
echo "BEFORE FUN MAIN, VAR=$var"
echo "   PARS starting in main:  $0 $1 $2 $3 $4 $5"
     
test_fun1 "$@"
echo "   PARS after fun in main: $0 $1 $2 $3 $4 $5"
echo "AFTER FUN MAIN, VAR=$var"

exit 0
