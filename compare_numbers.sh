#!/bin/bash
read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
if [ $num1 -gt $num2 ]; then
  echo "$num1 больше $num2"
elif [ $num1 -lt $num2 ]; then
  echo "$num1 меньше $num2"
else
  echo "Числа равны"
fi
