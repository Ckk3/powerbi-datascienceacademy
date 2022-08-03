# Atividade usuarios

# setando o diretorio do arquivo
setwd("E:/DEV/powerbi-datascienceacademy/cap12")

# Importando dataset
users <- read.csv('usuarios.csv', fileEncoding = "windows-1252")

# Vizualizando dataset
View(users)
summary(users)
str(users)


# Criando uma tabela de frequencia
freq <- table(users$grau_instrucao)
View(freq)

# tabela de frequencia relativa
freq_re <- prop.table(freq)
View(freq_re)
# porcentagem
freq_re_porc <- freq_re * 100
View(freq_re_porc)

# adicionando tudo em uma unica tabela
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Tabela final com todos os valores
# Frequencia relativa e porcentagem
freq_re <- c(freq_re, sum(freq_re))
freq_re_porc <- c(freq_re_porc, sum(freq_re_porc))

#tabela final concatenada

tabelafinal <- cbind(freq,
                     freq_re, 
                     freq_re_porc)
View(tabelafinal)

#Valores arredondados
tabelafinal <- cbind(freq,
                     freq_re = round(freq_re, digits = 2), 
                     freq_re_porc = round(freq_re_porc, digits = 2))
View(tabelafinal)
  
  
  
  
  