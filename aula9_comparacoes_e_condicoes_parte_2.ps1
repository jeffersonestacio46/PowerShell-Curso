"Nasci em 14/10/1998 em Salvador" -like "*14/10/1998*"

#-match procura por um padrão usando expressões regulares
"Nasci em 14/10/1998 em Salvador" -match ".[0-9]{2}/[0-9]{2}/[0-9]{4}."
"Nasci em 14/10/1998 em Salvador" -notmatch ".[0-9]{2}/[0-9]{2}/[0-9]{4}."

#Metacaracteres básicos de expressões regulares:
# . (ponto) corresponde a qualquer caractere único, exceto quebras de linha.
# * (asterisco) corresponde a zero ou mais ocorrências do caractere ou grupo anterior
# + (sinal de mais) corresponde a uma ou mais ocorrências do caractere ou grupo anterior
# ? (ponto de interrogação) corresponde a zero ou uma ocorrência do caractere ou grupo anterior
# ^ (circunflexo) corresponde ao início de uma string
# $ (cifrão) corresponde ao final de uma string

#Metacaracteres básicos
# . : Qualquer caracter exceto linha nova

"teste teste" -match "..........." #corresponde a qualquer string com exatamente 5 caracteres

# ^ : Início da linha 

"teste" -match "^t...." #corresponde a qualquer string que comece com "t" seguido de 5 caracteres

# $ : Fim da linha

"teste" -match "^t...e$" #corresponde a qualquer string que comece com "t", seguido de 3 caracteres e termine com "e"

# * : Zero a N ocorrencias de caracteres

"teste" -match ".....*" # corresponde a qualquer string que comece com "t" seguido de zero ou mais caracteres

# + : Uma ou mais ocorrencias de caracteres

"teste" -match ".....+" #corresponde a qualquer string que comece com "t" seguido de uma ou mais caracteres

# { N } : quantidade de repetições

"teste" -match ".{5}" #corresponde a qualquer string com exatamente 5 caracteres

# { N,} : Quantidade minima de repetições

"teste" -match ".{5,}" #corresponde a qualquer string com 5 ou mais caracteres

# { N,M } : Quantidade mínima e máxima de repetições

"teste" -match ".{2,5}" #corresponde a qualquer string com entre 2 e 5 caracteres
"teste" -match ".{6,10}" #corresponde a qualquer string com entre 6 e 10 caracteres

# (<caracteres>) : conjunto de caracteres literais

"teste" -match ".*(test)" #corresponde a qualquer string que contenha a sequência "test"
"teste" -match ".*(text)" 

# [<caracteres>] : opções de carateres

"teste" -match ".*[ejp].*" #corresponde a qualquer string que contenha as letras "e", "j" ou "p"
"14/10/1998" -match ".*[0-9]{2}/[0-9]{2}/[0-9]{4}.*" #corresponde a qualquer string que contenha uma data no formato dd/mm/aaaa