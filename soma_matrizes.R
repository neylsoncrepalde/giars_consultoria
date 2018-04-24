####################################
### PESCARTE
### GIARS
### Soma matrizes manhã e tarde
### Script: Neylson Crepalde
####################################

# Instala os pacotes necessários se eles já não estiverem instalados
if ('readxl' %in% installed.packages() == F) install.packages('readxl')
if ('igraph' %in% installed.packages() == F) install.packages('igraph')
if ('blockmodeling' %in% installed.packages() == F) install.packages('blockmodeling')

# Carrega os pacotes
library(readxl)
library(igraph)
library(blockmodeling)

# Pega todos os arquivos .net que estão na pasta
arquivos = grep('*.net', dir(), value = T)
length(arquivos)
arquivos

# Lê todos os grafos de uma vez e atribui a uma lista l
l = lapply(arquivos, read_graph, format = 'pajek')

# atribui os nomes corretos
manha = read_xlsx('SOMA MATRIZES MANHÃ.xlsx')
View(cbind(V(l[[3]])$name, names(manha)[-1])) # São iguais

tarde = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx')
View(cbind(V(l[[10]])$name, names(tarde)[-1])) # São iguais

# Atribui nomes da manhã às matrizes da manhã
for (g in 1:9) {
  V(l[[g]])$name <- names(manha)[-1]
}

# Atribui nomes da tarde às matrizes da tarde
for (g in 10:18) {
  V(l[[g]])$name <- names(tarde)[-1]
}


#-------------------------------
# Soma questão 1 manhã e tarde

# Testta se há repetições de nomes
for (i in 1:9) {
  for (nome in 1:92) {
    print(V(l[[i]])$name[nome] %in% V(l[[i+9]])$name)
  }
}

Q1 = l[[1]] %u% l[[10]]


plot(Q1, vertex.label = NA, vertex.size=5, edge.width = E(Q1)$weight,
     edge.color = adjustcolor('grey60', .7))
# Corrige os pesos
peso1 = E(Q1)$weight_1
peso2 = E(Q1)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q1)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q1, attr = 'weight')))

#---------------------------
# Soma questão 2 manhã e tarde
Q2 = l[[2]] %u% l[[11]]
plot(l[[2]], vertex.label = NA, vertex.size=5, layout=layout_with_kk)
plot(l[[11]], vertex.label = NA, vertex.size=5)
plot(Q2, vertex.label = NA, vertex.size=5, layout=layout_with_kk)

peso1 = E(Q2)$weight_1
peso2 = E(Q2)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q2)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q2, attr = 'weight')))

#----------------------
Q3 = l[[3]] %u% l[[12]]
plot(Q3, vertex.label = NA, vertex.size=5)

peso1 = E(Q3)$weight_1
peso2 = E(Q3)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q3)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q3, attr = 'weight')))

#--------------------------------
Q4_1 = l[[4]] %u% l[[13]]
plot(Q4_1, vertex.label = NA, vertex.size=5)

peso1 = E(Q4_1)$weight_1
peso2 = E(Q4_1)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q4_1)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q4_1, attr = 'weight')))

#---------------------------------------------
Q4_5 = l[[8]] %u% l[[17]]
plot(Q4_5, vertex.label = NA, vertex.size=5)

peso1 = E(Q4_5)$weight_1
peso2 = E(Q4_5)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q4_5)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q4_5, attr = 'weight')))

#-------------------------------------
Q4_simples = l[[9]] %u% l[[18]]
plot(Q4_simples, vertex.label = NA, vertex.size=5)

peso1 = E(Q4_simples)$weight_1
peso2 = E(Q4_simples)$weight_2
peso1[is.na(peso1)] = 0
peso2[is.na(peso2)] = 0
peso = peso1 + peso2
peso
E(Q4_simples)$weight = peso

# Confere a matriz de adjacência com pesos
View(as.matrix(get.adjacency(Q4_simples, attr = 'weight')))

# Exporta matrizes
savenetwork(as.matrix(get.adjacency(Q1)), 'pescarte_questao1.net')
savenetwork(as.matrix(get.adjacency(Q2)), 'pescarte_questao2.net')
savenetwork(as.matrix(get.adjacency(Q3)), 'pescarte_questao3.net')
savenetwork(as.matrix(get.adjacency(Q4_1)), 'pescarte_questao4_1.net')
savenetwork(as.matrix(get.adjacency(Q4_5)), 'pescarte_questao4_5.net')
savenetwork(as.matrix(get.adjacency(Q4_simples)), 'pescarte_questao4_simples.net')
