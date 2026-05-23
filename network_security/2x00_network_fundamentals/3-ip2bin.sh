#!/bin/bash
IFS='.' read -r o1 o2 o3 o4 <<< "$1"

b1=$(printf "%08d" $(echo "obase=2; $o1" | bc))
b2=$(printf "%08d" $(echo "obase=2; $o2" | bc))
b3=$(printf "%08d" $(echo "obase=2; $o3" | bc))
b4=$(printf "%08d" $(echo "obase=2; $o4" | bc))

echo "${b1}.${b2}.${b3}.${b4}"
