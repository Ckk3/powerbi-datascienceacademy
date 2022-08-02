# setando o diretorio do arquivo
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

#Importando dataset
vendas <- read.csv('vendas.csv', fileEncoding = "windows-1252")

#Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
