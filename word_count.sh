#!/bin/bash
read -p "Введите имя файла: " filename
read -p "Введите слово для поиска: " word
if [ -f "$filename" ]; then
  count=$(grep -o -w "$word" "$filename" | wc -l)
  echo "Слово \"$word\" встречается $count раз."
else
  echo "Файл $filename не найден."
fi
