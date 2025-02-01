#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Укажите число как аргумент!"
  exit 1
fi
number=$1
while [ $number -ge 0 ]; do
  echo $number
  number=$((number - 1))
done
