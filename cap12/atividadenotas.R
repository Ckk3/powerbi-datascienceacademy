# Atividades de exercicio

#Setando o diretorio
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

#importando dados
notas <- read.csv('notas.csv')

#Visualizando dataset
View(notas)

#Exercício 1 
#Apresente um resumo de tipos de dados e estatísticas do dataset.
str(notas)
summary(notas)

#Exercício 2 
#Qual a média de cada turma
mean(notas$TurmaA)
mean(notas$TurmaB)

#Exercício 3
#Qual turma apresentou maior variabilidade de notas Justifique sua resposta.
sd(notas$TurmaA)
sd(notas$TurmaB)
print("Turma A apresentou maior variabilidade")

#Exercício 4 
#Calcule o coeficiente de variação das 2 turmas.
md_ta <- mean(notas$TurmaA)
md_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cv_ta <- sd_ta / md_ta * 100
cv_ta
cv_tb <- sd_tb / md_tb * 100
cv_tb

#Exercício 5 
#Qual nota apareceu mais vezes em cada turma

#Moda
# Create the function.
moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
#ver resultado
resultado <- moda(notas$TurmaA)
print(resultado)

resultado <- moda(notas$TurmaB)
print(resultado)



