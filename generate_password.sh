#!/bin/bash
read -p "Введите длину пароля: " length
password=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | head -c $length)
echo "Ваш пароль: $password"
