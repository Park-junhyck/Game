#AD에서 새로운 사용자 계정을 대량으로 생성 시(CSV 파일에 사용자 정보를 입력 후 실행)
Import-Csv "users.csv" | ForEach-Object {
    New-ADUser -Name $_.Name -GivenName $_.FirstName -Surname $_.LastName -UserPrincipalName $_.Email -Path "OU=Users,DC=example,DC=com" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
}
