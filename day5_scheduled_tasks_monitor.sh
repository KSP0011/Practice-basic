#!/bin/bash
echo "Cron jobs:"
for user in $(cut -f1 -d: /etc/passwd); do
  echo "User: $user"
  crontab -l -u "$user" 2>/dev/null
done

echo -e "\nAt jobs:"
atq
