#!/bin/bash
traceroute -n "$1" 2>/dev/null | awk 'END {print $1}' | tr -d '\n'
