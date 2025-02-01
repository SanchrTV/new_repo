#!/bin/bash
read -p "Введите директорию: " dir
for file in "$dir"/*; do
  mv "$file" "$dir/$(basename "$file" | tr "[:upper:]" "[:lower:]")"
done
