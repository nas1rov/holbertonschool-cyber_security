#!/bin/bash

n=$1

# (opsional) input yoxlaması
if [ "$n" -lt 0 ] || [ "$n" -gt 255 ]; then
  echo "Error: input must be 0-255"
  exit 1
fi

# 8-bit binary output
for i in {7..0}; do
  echo -n $(( (n >> i) & 1 ))
done

echo
