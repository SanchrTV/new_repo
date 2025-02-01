#!/bin/bash
usage=$(df / | tail -1 | awk "{print \$5}" | sed "s/%//")
if [ $usage -gt 80 ]; then
  echo "Предупреждение: Использование диска превышает 80%!"
else
  echo "Использование диска в норме."
fi
