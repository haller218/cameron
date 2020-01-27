#!/bin/sh

PID=0

start () {

    ecl --load src/cameron.lisp 1>> cameron.log. 2>> error.log. &

    PID=$!
}

begin () {

    echo "BEGIN CAMERON"

    start

    echo $PID > pid.

    echo "PID : $PID"
}

begin &
