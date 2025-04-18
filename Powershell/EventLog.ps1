#Windows 이벤트 로그 분석(특정 오류 감지 후 정기적으로 실행하여 오류 로그 수집 분석)

Get-EventLog -LogName Application -EntryType Error | Where-Object { $_.Message -like "*GameServer*" } | Export-Csv "ErrorLogs.csv"
