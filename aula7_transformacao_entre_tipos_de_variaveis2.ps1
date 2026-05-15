write-host (get-date -Year 1976 -Month 6 -day 10)

write-host (get-date -hour 12 -Minute 30 -Second 10)

write-host ([datetime]::Parse("10/06/1976")) #Vai transformar a string "10/06/1976 12:30:10" em um objeto do tipo datetime. O resultado será a data e hora correspondentes à string, que é 10 de junho de 1976 às 12:30:10. O formato da string deve ser compatível com o formato de data e hora do sistema operacional, caso contrário, pode ocorrer um erro de formatação.
write-host ([datetime]::Parse("10/06/1976").timeOfDay) #vai exibir apenas a hora, minuto e segundo da data e hora correspondente à string "10/06/1976 12:30:10". O resultado será "12:30:10". O método timeOfDay retorna um objeto do tipo TimeSpan que representa a parte de tempo da data e hora.
write-host ([datetime]::Parse("10/06/1976 12:30:10").timeOfDay)#Vai exibir apenas a hora, minuto e segundo da data e hora correspondente à string "10/06/1976 12:30:10". O resultado será "12:30:10". O método timeOfDay retorna um objeto do tipo TimeSpan que representa a parte de tempo da data e hora.


write-host ((get-date).toString("f"))#Ele pega a data de hoje e a formata usando o formato "f", que exibe a data completa e a hora com minutos. O resultado será algo como "segunda-feira, 10 de junho de 2024 12:30". O formato "f" é um formato de data e hora predefinido que exibe a data completa e a hora com minutos.
write-host ((get-date).toString("D"))#Ele pega a data de hoje e a formata usando o formato "D", que exibe a data completa. O resultado será algo como "segunda-feira, 10 de junho de 2024". O formato "D" é um formato de data predefinido que exibe a data completa.
write-host ((get-date).toString("T"))#Ele pega a data de hoje e a formata usando o formato "T", que exibe a hora completa. O resultado será algo como "12:30:10". O formato "T" é um formato de hora predefinido que exibe a hora completa, incluindo horas, minutos e segundos.    
write-host ((get-date).toString("t"))#Ele pega a data de hoje e a formata usando o formato "t", que exibe a hora com minutos. O resultado será algo como "12:30". O formato "t" é um formato de hora predefinido que exibe a hora com minutos, mas sem os segundos.
write-host ((get-date).toString("d"))#Ele pega a data de hoje e a formata usando o formato "d", que exibe a data curta. O resultado será algo como "10/06/2024". O formato "d" é um formato de data predefinido que exibe a data curta, geralmente no formato "dd/MM/yyyy" ou "MM/dd/yyyy", dependendo das configurações regionais do sistema operacional.

Write-Host ((Get-Date).day)#pega a data de hoje
Write-Host ((Get-Date).month)#pega o mês da data de hoje
Write-Host ((Get-Date).year)#pega o ano da data de hoje 
Write-Host ((Get-Date).Hour)#pega a hora da data de hoje
Write-Host ((Get-Date).Minute)#pega os minutos da data de hoje
Write-Host ((Get-Date).Second)#pega os segundos da data de hoje
Write-Host ((Get-Date).DayOfWeek)#pega o dia da semana da data de hoje
Write-Host ((Get-Date).DayOfYear)#pega o dia do ano da data de hoje, ou seja, o número do dia dentro do ano. Por exemplo, se hoje for 10 de junho, o resultado será 161, pois é o 161º dia do ano (considerando anos bissextos). O método DayOfYear retorna um valor inteiro que representa o número do dia dentro do ano, começando em 1 para 1º de janeiro e terminando em 365 ou 366 para 31 de dezembro, dependendo se o ano é bissexto ou não.
