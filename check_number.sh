#!/bin/bash
read -p "Введите число: " number
if [ $number -gt 0 ]; then
  echo "Число положительное"
elif [ $number -lt 0 ]; then
  echo "Число отрицательное"
else
  echo "Число равно нулю"
fi
