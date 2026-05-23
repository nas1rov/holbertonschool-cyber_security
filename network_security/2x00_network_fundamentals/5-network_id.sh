#!/bin/bash
IFS=. read -ra ip <<< "$1"; IFS=. read -ra mask <<< "$2"; printf "%d.%d.%d.%d\n" $((${ip[0]} & ${mask[0]})) $((${ip[1]} & ${mask[1]})) $((${ip[2]} & ${mask[2]})) $((${ip[3]} & ${mask[3]}))
