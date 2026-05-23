#!/bin/bash
IFS=. read -ra ip <<< "$1"; ip32=$(( (ip[0]<<24) + (ip[1]<<16) + (ip[2]<<8) + ip[3] )); mask=$(( 0xffffffff ^ (1 << (32 - $2)) - 1 )); net=$(( ip32 & mask )); bcst=$(( net | (~mask & 0xffffffff) )); f=$(( net + 1 )); l=$(( bcst - 1 )); printf "%d.%d.%d.%d - %d.%d.%d.%d" $((f>>24&255)) $((f>>16&255)) $((f>>8&255)) $((f&255)) $((l>>24&255)) $((l>>16&255)) $((l>>8&255)) $((l&255))
