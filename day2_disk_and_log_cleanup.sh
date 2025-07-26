#!/bin/bash
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
if [ "$USAGE" -gt 90 ]; then
  echo "Disk usage is above 90%! Cleaning logs..."
  sudo journalctl --vacuum-time=3d
  sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;
else
  echo "Disk usage is $USAGE%. All good."
fi
