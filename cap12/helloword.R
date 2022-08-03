# setando o diretorio do arquivo
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

#Importando dataset
vendas <- read.csv('vendas.csv', fileEncoding = "windows-1252")

#Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

#Media Aritimetica
mean(vendas$Valor)

#Media Ponderada
weighted.mean(vendas$Valor, w = vendas$Custo)

#mediana
median(vendas$Valor)

#Moda
# Create the function.
moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
#ver resultado
resultado <- moda(vendas$Valor)
print(resultado)

modacusto <- moda(vendas$Custo)
print(modacusto)


#Criando grafico de media
#install.packages("ggplot2")
library(ggplot2)

#Criar grafico
ggplot(vendas) + 
  stat_summary(aes(x = Estado, y = Valor), fun = mean, geom = "bar") + 
  labs(title = "Média de Valor Por Estado ")


