#[math]::pow(2,2) para realizar potenciação
#[math]::sqrt(16) para realizar raiz quadrada
#[math]::pow(9,(1/2)) para calcular a raiz quadrada usando potenciação
#[math]::pow(27,(1/3)) para calcular a raiz cúbica
#[math]::log10(100) para realizar logaritmo
#[math]::log(100,10) para realizar logaritmo com base personalizada
#[math]::abs(-5) para valor absoluto
#[math]::round(3.14159,2) para arredondar um número
#[math]::floor(3.7) para arredondar para baixo
#[math]::ceiling(3.2) para arredondar para cima
#[random]::Next(1,100) para gerar um número aleatório entre 1 e 100
#([random]::new()).Next(100) para gerar um número aleatório usando a nova sintaxe do PowerShell 7.0

Clear-Host
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,2)
write-host "Informe o valor.........."
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,4)
write-host "Informe o valor.........."

$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (26,2)
$valor1 = [int]::Parse((Read-Host "."))#o read-host pega apenas texto, para converter para número inteiro usa o [int]::Parse
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (26,4)
$valor2 = [int]::Parse((Read-Host "."))

$resultado = $valor1 + $valor2

$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
write-host "o resultado da soma igual a: $resultado"

pause

clear-host