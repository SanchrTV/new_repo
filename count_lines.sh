#!/bin/bash
read -p "Введите имя файла: " filename
if [ -f "$filename" ]; then
  lines=$(wc -l < "$filename")
  echo "В файле $filename $lines строк."
else
  echo "Файл не найден."
fi
