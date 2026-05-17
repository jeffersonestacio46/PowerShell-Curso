#Operações de comparação e condições

#-lt Menor que
1 -lt 1
1 -lt 2
2 -lt 1

#-le  Menor ou igual a
1 -le 1
1 -le 2
2 -le 1

#-gt  Maior que
1 -gt 1 
1 -gt 2
2 -gt 1

#-ge  Maior ou igual a
1 -ge 1
1 -ge 2
2 -ge 1

#-eq  Igual a
1 -eq 1
1 -eq 2
2 -eq 1

#-ne  Não igual a
1 -ne 1
1 -ne 2
2 -ne 1

#-like procura por um padrão usando caracteres curinga (*)
"teste" -like "*e*" 
"teste" -like "*r*"

#-notlike procura por um padrão usando caracteres curinga (*)
"teste" -notlike "*e*"
"teste" -notlike "*r*"#ele informa que não possui o r na palavra teste

#-contains verifica se um elemento está contido em um array
(1,2,3,4) -contains 3
(1,2,3,4) -contains 5

#-notcontains verifica se um elemento não está contido em um array
(1,2,3,4) -notcontains 3
(1,2,3,4) -notcontains 5

#operadores lógicos

#-and operador lógico E
$true -and $true
$true -and $false
$false -and $true
$false -and $false

#-or operador lógico OU
$true -or $true
$true -or $false
$false -or $true
$false -or $false

#-xor operador lógico OU exclusivo
$true -xor $true
$true -xor $false
$false -xor $true
$false -xor $false

#-not operador lógico NÃO
-not $true
-not $false


#Exemplos de compraração com expressões lógicas

1 -gt 0 -and "teste" -like "*e*" #True, pois 1 é maior que 0 e a palavra "teste" contém a letra "e"
1 -gt 0 -or "teste" -like "*e*" #True, pois 1 é maior que 0 ou a palavra "teste" contém a letra "e"
1 -gt 0 -and "teste" -notlike "*e*" #False, pois 1 é maior que 0 mas a palavra "teste" não contém a letra "e"
1 -gt 0 -or "teste" -notlike "*e*" #True, pois 1 é maior que 0 ou a palavra "teste" não contém a letra "e"
-not (1 -gt 0 -and "teste" -like "*e*") #False, pois a expressão dentro dos parênteses é verdadeira, mas devido o not se torna False
1 -gt 0 -xor "teste" -like "*e*" #False, pois ambas as expressões são verdadeiras, e o operador XOR retorna verdadeiro apenas se uma das expressões for verdadeira, mas não ambas.
1 -gt 0 -xor "teste" -notlike "*e*" #True, pois uma das expressões é verdadeira (1 é maior que 0) e a outra é falsa (a palavra "teste" contém a letra "e"), e o operador XOR retorna verdadeiro quando apenas uma das expressões é verdadeira.
