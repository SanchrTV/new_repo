#!/bin/bash
read -p "Введите директорию для архивации: " dir
date=$(date +%Y-%m-%d)
archive_name="backup_$date.tar.gz"
tar -czvf $archive_name "$dir"
scp $archive_name ubuntu@77.105.159.99:/home/ubuntu/build_rag/pdfs/
ssh ubuntu@77.105.159.99 "cd /home/ubuntu/build_rag/pdfs/ && ls -t backup_*.tar.gz | tail -n +4 | xargs rm -f"
