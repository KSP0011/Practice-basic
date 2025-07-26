#!/bin/bash
echo "Users with /bin/bash shell:"
awk -F: '/\/bin\/bash/ { print $1 }' /etc/passwd

echo -e "\nLast logins:"
lastlog | grep -v 'Never'
