#!/bin/bash
#CPU, Memory 사용량을 확인 후 특정 상황에 경고 메시지 보내기
#corn으로 5분마다 체크
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
if (( $(echo "$CPU_USAGE > 80.0" | bc -l) )); then
    echo "High CPU usage: $CPU_USAGE%" | mail -s "CPU Alert" admin@example.com
fi
