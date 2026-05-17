#Loop simples usando o for
for ( $i = 1 ; $i -le 10 ; $i = $i + 1 ) {Write-Host $i} 

for ( $i = 1 ; $i -le 10 ; $i++) {Write-Host $i} 

#Loop usando o while
$i = 1
while ($i -le 10) {
    Write-Host $i
    $i++  # ou $i = $i + 1
}

#loop usando o foreach, onde cada elemento da coleção é atribuído a uma variável temporária
$i= (1,2,3,4,5,6,7,8,9,10)
foreach ($cadaUm in $i) {
    Write-Host $cadaUm
}


$i | foreach {Write-Host $_} # o $_ é uma variável automática que representa o elemento atual do loop foreach
