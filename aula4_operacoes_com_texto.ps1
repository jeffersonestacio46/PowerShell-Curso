#Interpolação
$valor = "teste"
write-host "O valor igual a $valor com interpolacao de string"

#Concatenação
Write-Host "O valor igual a "$valor" com concatenação de string"

#substring
write-host "Jefferson Oliveira".Substring(0,9) #o primeiro número é a posição inicial e o segundo número é a quantidade de caracteres a serem exibidos

#substituir
Write-Host "Jefferson Oliveira".Replace("Oliveira","Silva")#troca o nome Oliveira por Silva

#Limpar
Write-Host "(" "    Jefferson Oliveira    ".Trim() ")"#o trim limpa os espaços em branco do início e do fim da string
Write-Host "(" "    Jefferson Oliveira    ".TrimEnd() ")"#o trimend limpa os espaços em branco do fim da string
Write-Host "(" "    Jefferson Oliveira    ".TrimStart() ")"#o trimstart limpa os espaços em branco do início da string

#Tipos de Caixa (maiúsculas, minúsculas)
Write-Host "Jefferson Oliveira".ToUpper()#tudo em maiúsculo
Write-Host "Jefferson Oliveira".ToLower()#tudo em minúsculo

#Repetição
Write-Host "-".PadRight(20,"-")#repete o caractere "-" 20 vezes
Write-Host "-".PadLeft(20,"-")#repete o caractere "-"
