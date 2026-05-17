
# $teste = 10,5
# write-host $teste

# ([double]::Parse($teste)).gettype()
# [double]::tryparse($teste,[ref]$null) #verifica se a string pode ser convertida para double, retorna true ou false
# [int]::tryparse($teste,[ref]$null)
# [double]::tryparse($teste,[ref]$null) -or [int]::tryparse($teste,[ref]$null) #verifica se a string pode ser convertida para double ou int, retorna true ou false

$teste = "14/10/1998"

write-host $teste

[datetime]::tryparse("14/10/1998", [ref](get-date)) #verifica se a string pode ser convertida para datetime, retorna true ou false


