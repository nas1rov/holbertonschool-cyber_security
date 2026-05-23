#!/bin/bash
IFS=. read -ra o <<< "$1"; printf "%08d.%08d.%08d.%08d\n" $(echo "obase=2;${o[0]}"|bc) $(echo "obase=2;${o[1]}"|bc) $(echo "obase=2;${o[2]}"|bc) $(echo "obase=2;${o[3]}"|bc)
