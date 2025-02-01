#!/bin/bash
add() {
  echo $(( $1 + $2 ))
}
read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
result=$(add $num1 $num2)
echo "Сумма: $result"
