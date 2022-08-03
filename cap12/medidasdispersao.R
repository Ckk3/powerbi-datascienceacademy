#Variancia e desvio padrao

# setando o diretorio do arquivo
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

#Importando dataset
vendas <- read.csv('vendas.csv', fileEncoding = "windows-1252")

#resumo do dataset
View(vendas)
str(vendas)

#Variancia
var(vendas$Valor)

#Devio padrao
sd(vendas$Valor)
