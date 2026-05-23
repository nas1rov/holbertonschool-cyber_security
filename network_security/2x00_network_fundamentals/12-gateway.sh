#!/bin/bash
ip route show | awk '/default/ {print $3}' | tr -d '\n'
