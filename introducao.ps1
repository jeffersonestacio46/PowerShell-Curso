#o testo abaixo será escrito em verde
write-host "agora o texto será scrito em verde" -foregroundcolor green

#escreve o texto em amarelo e o fundo deixa verde
write-host "agora o texto será escrito em amarelo com o fundo verde" -ForegroundColor yellow -BackgroundColor Green

#para escrever duas linhas, por isso usa o ponto virgula
write-host "linha 1";Write-Host "linha 2"

#O comando NoNewline é para deixar tudo em uma linha
write-host "Linha única" -NoNewline ;write-host "Tudo em uma linha"

#Separador de valor
Write-Host (1,2,3,4,5)
Write-Host (1,2,3,4,5) -separator "#"
Write-Host (1,2,3,4,5) -separator "?"
Write-Host (1,2,3,4,5) -separator "Texto separador"

#Solicitar comando aos usuarios
read-host "Informe algo"
write-host (read-host "informe algo") -foregroundcolor White -BackgroundColor Red
read-host "Informe a senha"
#para para não exibir dados digitados, o securestring dá uma seguração de forma visual
Read-Host "Informe a senha"-AsSecureString

