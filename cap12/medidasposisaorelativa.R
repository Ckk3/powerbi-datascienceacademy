#medidas posicao relativa

# setando o diretorio do arquivo
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

#Importando dataset
vendas <- read.csv('vendas.csv', fileEncoding = "windows-1252")

#resumo dos dados
head(vendas)
View(vendas)

#Medidas de tendencia central
summary(vendas)
summary(vendas[c('Valor', 'Custo')])


#Variaveis numericas
mean(vendas$Valor) #media
median(vendas$Valor) #Mediana
quantile(vendas$Valor) #Quartil
quantile(vendas$Valor, probs = c(0.01, 0.99)) #percentil de 1 por cento e 99 por cento
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20)) #percentil de 0 a 100 por cento de 20 em 20 por cento
IQR(vendas$Valor) #Diferenca entre q3 e q1
range(vendas$Valor) # Range entre o 0 por cento ate o 100 por cento
diff(range(vendas$Valor)) #Diferenca do range 
