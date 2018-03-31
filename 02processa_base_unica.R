####################################
### PESCARTE
### GIARS - UFMG
### Script: Neylson Crepalde
### Objetivo: Processa a base única
####################################

library(readr)
library(dplyr)
library(descr)
library(igraph)

dados = read_csv('pescarte_nova.csv')

####################################
# Verificando a integridade

names(dados)

# Juntando indicacoes
rodadas = c(6, 12, 18, 24, 28, 33, 39, 44, 49, 53, 58, 62, 66, 70, 75, 79)
names(dados)[rodadas]

# Juntando os nomes com apelidos e funcoes e guardando num vetor unico
indicacoes = c()
for (row in 1:nrow(dados)) {
  for (col in rodadas) {
    completo = paste(dados[row,col], dados[row, col+1], dados[row, col+2])
    indicacoes = c(indicacoes, completo)
  }
}

tabela = freq(indicacoes, plot = F)
tabela = as.matrix(tabela)
tabela[1:30,]
#View(tabela)
## Não funcionou

#########################################################
# Montando apenas com o nome





