#!/usr/bin/env bash

echo "Slave starting"
echo "--------------"

SNAME=${1:-"slave1@localhost"}

erl -pa ebin -sname $SNAME -setcookie demo_app -eval "application:start(calcul_slave)"
