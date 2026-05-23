#!/bin/bash

# Assign the first argument to a variable
decimal=$1

# Initialize an empty string for the binary output
binary=""

# Loop from bit position 7 down to 0
for ((i=7; i>=0; i--)); do
    # Right-shift the number by 'i' positions and check the last bit
    bit=$(( (decimal >> i) & 1 ))
    binary="${binary}${bit}"
done

# Output the final 8-bit string
echo "$binary"
