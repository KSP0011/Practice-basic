#!/bin/bash
MEM_USAGE=$(free | awk '/Mem/ { printf("%.0f", $3/$2 * 100) }')
LOAD=$(uptime | awk -F 'load average:' '{ print $2 }' | cut -d',' -f1 | awk '{ print int($1) }')

if [ "$MEM_USAGE" -gt 80 ]; then
  echo "Memory usage high: $MEM_USAGE%"
fi

if [ "$LOAD" -gt 2 ]; then
  echo "CPU load high: $LOAD"
fi
