#Azure에 VM을 생성 후 네트워크 설정을 자동화할 때 사용(Azure CLI와 통합하여 VM 생성 후 네트워크 보안 그룹(NSG) 설정)

$vmName = "GameServer01"
$resourceGroup = "GameResources"
New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Location "East US" -Image "UbuntuLTS" -Size "Standard_DS1_v2"
