####################################
### PESCARTE
### GIARS - UFMG
### Script: Neylson Crepalde
### Objetivo: Junta as bases novas
####################################

library(readxl)
library(dplyr)
library(readr)

# Pega todos os nomes dos arquivos
arquivos = grep('.xlsx', dir(), value = T)

# Lê todas as bases em uma lista
bases = lapply(arquivos, read_excel)

# Verifica nomes das variáveis para todas as bases
for (i in 2:length(bases)) {
  print(names(bases[[1]])  == names(bases[[i]]))
}

# Apenas o nome da segunda variável de todas as bases é diferente.
# Verificando o nome da segunda variável
sapply(bases, function(x) names(x)[2])

# Padroniza o nome da segunda variável de todos os bancos
for (i in 1:length(bases)) {
  names(bases[[i]])[2] = 'Comunidade'
}

# Verifica se agora o nome está igual
sapply(bases, function(x) names(x)[2])

# Verifica o número de colunas de todas as variáveis
sapply(bases, ncol)
# Todas iguais

##############################
# Junta todas as bases
unica = bases[[1]]

for (i in 2:length(bases)) {
  unica = rbind(unica, bases[[i]])
}

# Salvando o arquivo
write_csv(unica, 'pescarte_nova.csv')




