#crianção de script
$backupCor = $host.ui.RawUI.BackgroundColor
$host.UI.RawUI.BackgroundColor = "Darkgray"
cls

#posicionando o curso na coluna 2 e na linha 2
$host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,2)
Write-Host "Informe o valor...:"

$host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,4)
Write-Host "Informe o valor...:"

$host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (18,2)
$valor1 = Read-Host "."

$host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (18,4)
$valor2 = Read-Host "."

$host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
Write-Host "Você digitou $valor1 $valor2"

pause
$host.UI.RawUI.BackgroundColor = $backupCor
cls