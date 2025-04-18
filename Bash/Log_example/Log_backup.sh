#!/bin/bash
# 오래된 로그를 삭제 후 새로운 로그를 백업할시
LOG_DIR="/var/log/game_server"
BACKUP_DIR="/backup/logs"
find $LOG_DIR -type f -mtime +10 -exec rm {} \;  # 10일 이상된 로그 삭제
tar -czf $BACKUP_DIR/$(date +%Y%m%d)_logs.tar.gz $LOG_DIR  # 로그 백업
