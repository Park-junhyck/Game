#!/bin/bash
# 업데이트 파일을 다수 서버에 배포시
SERVERS=("server1.example.com" "server2.example.com")
FILE_PATH="/updates/game_update.tar.gz"
for SERVER in "${SERVERS[@]}"
do
    scp $FILE_PATH user@$SERVER:/var/game_updates/
done
