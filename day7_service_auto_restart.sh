#!/bin/bash
SERVICES=("nginx" "mysql")

while true; do
  for service in "${SERVICES[@]}"; do
    if ! systemctl is-active --quiet "$service"; then
      echo "$(date): $service down, restarting..." >> /var/log/service_monitor.log
      sudo systemctl restart "$service"
    fi
  done
  sleep 60
done
