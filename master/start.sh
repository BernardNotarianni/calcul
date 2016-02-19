#!/usr/bin/env bash

echo "Master starting"
echo "---------------"

erl -pa ebin -sname master@localhost -setcookie demo_app -eval "application:start(calcul_master)"
