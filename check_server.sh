#!/bin/bash
read -p "Введите адрес сервера (например, google.com): " server
ping -c 1 $server &> /dev/null
if [ $? -eq 0 ]; then
  echo "Сервер $server доступен."
else
  echo "Сервер $server недоступен."
fi
