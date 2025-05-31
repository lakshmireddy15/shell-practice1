#!/bin/bash

echo "all varibales passed to the script : $@"
echo "Number of variables :$#"
echo "scrpit name: $0"
echo "present directory: $PWD"
echo "user running the scrpit: $USER"
echo "Home directory: $HOME"
echo "PID of the scrpit: $$"
sleep 20 &
echo " PID of the last commnd" $!"