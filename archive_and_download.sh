#!/bin/bash
ssh ubuntu@77.105.159.99 "cd /home/ubuntu/build_rag/pdfs/ && tar -czvf backup_$(date +%Y-%m-%d).tar.gz *"
scp ubuntu@77.105.159.99:/home/ubuntu/build_rag/pdfs/backup_$(date +%Y-%m-%d).tar.gz ./
tar -xzvf backup_$(date +%Y-%m-%d).tar.gz
