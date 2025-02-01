#!/bin/bash
read -p "Введите директорию для архивации: " dir
date=$(date +%Y-%m-%d)
tar -czvf archive_$date.tar.gz "$dir"
