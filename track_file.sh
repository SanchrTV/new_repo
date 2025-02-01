#!/bin/bash
read -p "Введите имя файла для отслеживания: " filename
if [ -f "$filename" ]; then
  last_mod=$(stat -c %Y "$filename")
  while true; do
    current_mod=$(stat -c %Y "$filename")
    if [ $current_mod -ne $last_mod ]; then
      echo "Файл $filename был изменен!"
      last_mod=$current_mod
    fi
    sleep 2
  done
else
  echo "Файл $filename не найден."
fi
