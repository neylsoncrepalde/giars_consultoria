####################################
### PESCARTE
### GIARS
### Soma matrizes manhã e tarde
### Script: Neylson Crepalde
####################################

library(readxl)
library(igraph)

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


plot(Q1, vertex.label = NA, vertex.size=5)

# Soma questão 2 manhã e tarde
Q2 = l[[2]] %u% l[[11]]
plot(l[[2]], vertex.label = NA, vertex.size=5, layout=layout_with_kk)
plot(l[[11]], vertex.label = NA, vertex.size=5)
plot(Q2, vertex.label = NA, vertex.size=5, layout=layout_with_kk)


Q3 = l[[3]] %u% l[[12]]
plot(Q3, vertex.label = NA, vertex.size=5)

Q4_1 = l[[4]] %u% l[[13]]
plot(Q4_1, vertex.label = NA, vertex.size=5)

Q4_5 = l[[8]] %u% l[[17]]
plot(Q4_5, vertex.label = NA, vertex.size=5)

Q4_simples = l[[9]] %u% l[[18]]
plot(Q4_simples, vertex.label = NA, vertex.size=5)
