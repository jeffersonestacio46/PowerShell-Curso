#Encapsulando o código em uma função, para evitar repetição de código e facilitar a manutenção do código
function  posionaCursor {
    param (
        [int]$coluna,
        [int]$linha
    )
    $Host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates ($coluna, $linha)
    return
}


$sairdosistema = "N"
#-ne é diferente, ou seja, enquanto a variável for diferente de N, o loop continua, quando for igual a N, o loop para
while ($sairdosistema -ne "S") {

    Clear-Host

    posionaCursor 2 2
    write-host "Informe o valor.........."
    posionaCursor 2 4
    write-host "Informe o outro valor...."

    posionaCursor 26 2
    $valor1 =Read-Host "."#o read-host pega apenas texto, para converter para número inteiro usa o [int]::Parse
    posionaCursor 26 4
    $valor2 = Read-Host "."

    if ([double]::TryParse($valor1,[ref]$null) -and [double]::TryParse($valor2,[ref]$null)) {
        $valor1 = [double]::Parse($valor1)
        $valor2 = [double]::Parse($valor2)
        $resultado = $valor1 + $valor2

        posionaCursor 2 6
        write-host "o resultado da soma igual a" ([string]::Format("{0:N2}",$resultado)) #o string::format formata o número para exibir apenas 2 casas decimais

    } elseif ((-not [double]::TryParse($valor1,[ref]$null)) -and [double]::TryParse($valor2,[ref]$null)) {
        posionaCursor 2 6
        write-host "Valor 1 informado errado"
    } elseif ((-not [double]::TryParse($valor2,[ref]$null)) -and [double]::TryParse($valor1,[ref]$null)) {
        posionaCursor 2 6
        write-host "Valor 2 informado errado"

    }
    else {
        posionaCursor 2 6
        write-host "Ambos valores foram informados errados"
    }
    posionaCursor 2 8
    write-host "Deseja sair do sistema?(S/N)"
    posionaCursor 30 8
    $sairdosistema = Read-Host "."
}

clear-host