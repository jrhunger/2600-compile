#!/bin/bash

if [ "$DEBUG_LEVEL" != "" ]; then
  DEBUG_OPTION="-v$DEBUG_LEVEL"
fi

/usr/local/bin/dasm *.asm -f3 $DEBUG_OPTION -Lcart.lst -scart.sym -ocart.bin

if [ "$DEBUG_LEVEL" = "2" ]; then
echo "--------------------------- list file ----------------------------"
cat cart.lst
echo ""
echo ""
echo "--------------------------- sym file -----------------------------"
cat cart.sym
fi
