# Estatistica basica de graficos

# Tipos de graficos R 
# https://r-graph-gallery.com/

#mudando diretorio de trabalho
setwd("E:/DEV/powerbi-datascienceacademy/cap12")


#Dados
#Criando vetor
vetor_total_resultados = c(3, 12, 5, 18, 45)
names(vetor_total_resultados) = c("A","B","C","D","E")
vetor_total_resultados

#graficos de barras
?barplot
barplot(vetor_total_resultados)
#Chage colors
barplot(vetor_total_resultados, col = c(1,2,3,4,5))

#Salvando o grafico em png
?png
png("barplot.png",width = 480, height = 480)
#criando grafico pra guardar
barplot(vetor_total_resultados,
        col = rgb(0.5, 0.1, 0.6, 0.6),
        xlab = "Categories",
        ylab = "Values",
        main = "Barplot em R")
dev.off() #Salvar o png

#Usando o ggplot2
library(ggplot2)
View(mtcars) #mtcars e um dataset nativo da linguagem R

#Graficos de barras
?ggplot
ggplot(mtcars, aes(x = as.factor(cyl))) + 
  geom_bar()

ggplot(mtcars, aes(x = as.factor(cyl)), fill = as.factor(cyl)) + 
  geom_bar() +
  scale_fill_manual(values = c("red", "blue", "green"))
  

#criando um dataset com dados ficticioas
dados = data.frame(group = c("A", "B", "C", "D"), value = c(33, 62, 56, 67))
View(dados)

#Barplot
ggplot(dados, aes(x = group, y = value, fill = group)) +
  geom_bar(width = 0.85, stat = "identity")

#Graficos de Pizza
#criando vetores de dados
fatias <- c(4, 12, 14, 16, 8)
paises <- c("Brasil", "EUA", "Alemanha", "Reino Unido", "Espanha")
?pie
pie(fatias, labels = paises, main = "Leitura de Livros por Pessoas por Ano")


#utilizando uma biblioteca com graficos de pizza 3d
#install.packages("plotrix")
library(plotrix)

#criando vetores de dados
fatias <- c(4, 12, 14, 16, 8)
paises <- c("Brasil", "EUA", "Alemanha", "Reino Unido", "Espanha")
?pie3D
pie3D(fatias, labels = paises, main = "Leitura de Livros por Pessoas por Ano")

#Grafico de Linha
#Dados
carros <- c(1, 3, 6, 4, 9)
caminhoes <- c(2, 5, 4, 5, 12)

#Plot
?plot
plot(carros, type = "o", col = "blue", ylim = c(0, 12))
lines(caminhoes, type = "o", col = "red")
title(main = "Produção de Veiculos")

#boxplot
View(mpg) #dataset nativo de R











