#!/bin/bash
ssh ubuntu@77.105.159.99 "df -h /" | awk '{if (NR==2) print $5}' | sed 's/%//g' > usage.txt
usage=$(cat usage.txt)
if [ $usage -ge 90 ]; then
  echo "На сервере заканчивается место: $usage% занято" | mail -s "Диск почти заполнен" your_email@example.com
fi
