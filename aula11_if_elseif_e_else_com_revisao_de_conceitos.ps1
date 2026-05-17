Clear-Host
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,2)
write-host "Informe o valor.........."
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,4)
write-host "Informe o outro valor...."

$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (26,2)
$valor1 =Read-Host "."#o read-host pega apenas texto, para converter para número inteiro usa o [int]::Parse
$Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (26,4)
$valor2 = Read-Host "."

if ([double]::TryParse($valor1,[ref]$null) -and [double]::TryParse($valor2,[ref]$null)) {
    $valor1 = [double]::Parse($valor1)
    $valor2 = [double]::Parse($valor2)
    $resultado = $valor1 + $valor2

    $Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
    write-host "o resultado da soma igual a" ([string]::Format("{0:N2}",$resultado)) #o string::format formata o número para exibir apenas 2 casas decimais

} elseif ((-not [double]::TryParse($valor1,[ref]$null)) -and [double]::TryParse($valor2,[ref]$null)) {
    $Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
    write-host "Valor 1 informado errado"
} elseif ((-not [double]::TryParse($valor2,[ref]$null)) -and [double]::TryParse($valor1,[ref]$null)) {
    $Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
    write-host "Valor 2 informado errado"

}
else {
    $Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates (2,6)
    write-host "Ambos valores foram informados errados"
}
 

pause

clear-host