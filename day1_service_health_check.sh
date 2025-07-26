#!/bin/bash
services=("nginx" "ssh" "cron")
for service in "${services[@]}"; do
  if ! systemctl is-active --quiet "$service"; then
    echo "$service is not running. Restarting..."
    sudo systemctl restart "$service"
  else
    echo "$service is running fine."
  fi
done
