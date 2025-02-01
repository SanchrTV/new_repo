#!/bin/bash
ssh ubuntu@77.105.159.99 "sudo apt update && sudo apt list --upgradable && sudo apt upgrade -y && sudo reboot"
if [ $? -eq 0 ]; then
  echo "Сервер обновлён и перезагружен" | mail -s "Обновление сервера" sanchrtv@gmail.com
fi
