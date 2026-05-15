# Transformações de texto para número

write-host ([double]::Parse("10000")) #Vai transformar a string "10000" em um nÃºmero do tipo double
write-host ([double]::Parse("10,5")) #o ponto decimal Ã© a virgula

write-host ([int]::Parse("10000")) #Vai transformar a string "10000" em um nÃºmero do tipo double
write-host ([int]::Parse("10,5")) #com o int roda apenas numeros inteiros, entÃ£o ele vai arredondar para baixo e mostrar o nÃºmero 10

$letra = read-host "Digite uma letra: "

write-host ([int][char]$letra) #Vai transformar a letra digitada em um nÃºmero inteiro, utilizando a tabela ASCII. Por exemplo, se o usuÃ¡rio digitar a letra "A", o resultado serÃ¡ 65, que Ã© o cÃ³digo ASCII para a letra "A". Se o usuÃ¡rio digitar a letra "B", o resultado serÃ¡ 66, e assim por diante.


# Transformações de número para texto

write-host ([char]82)#para dedscobrir o caractere 82
write-host ([string]::Format("{0:N0}",10)) #Vai transformar o nÃºmero 10 em uma string formatada com o formato "N0", que significa um nÃºmero inteiro sem casas decimais. O resultado serÃ¡ a string "10". Se o nÃºmero tivesse casas decimais, elas seriam arredondadas para o inteiro mais próximo. Por exemplo, se o nÃºmero fosse 10.5, o resultado seria "11".
write-host ([string]::Format("{0:N2}",10)) #Depois do N, adiciona a quantidade de numeros decimais

write-host ([string]::Format("{0:C0}",10)) #Vai transformar o nÃºmero 10 em uma string formatada com o formato "C0", que significa um valor monetÃ¡rio sem casas decimais. O resultado serÃ¡ a string "R$ 10,00". Se o nÃºmero tivesse casas decimais, elas seriam arredondadas para o inteiro mais próximo. Por exemplo, se o nÃºmero fosse 10.5, o resultado seria "R$ 10,50".
write-host ([string]::Format("{0:C2}",10)) # O C coloca o R$ e o 2 depois do C, coloca as casas decimais
