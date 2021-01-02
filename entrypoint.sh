#!/bin/bash

/usr/local/bin/dasm *.asm -f3 -v1 -Lcart.lst -scart.sym -ocart.bin

echo "--------------------------- list file ----------------------------"
cat cart.lst
echo ""
echo ""
echo "--------------------------- sym file -----------------------------"
cat cart.sym
