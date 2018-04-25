#######################################
## PESCARTE
## GIARS
## Índice de sobreposição das matrizes
## Script: Neylson Crepale
#######################################

source('soma_matrizes.R')
if (!'writexl' %in% installed.packages()) install.packages('writexl')

library(writexl)

# Extraindo as matrizes binárias das questões de 1 a 4
M4_1 = as.matrix(get.adjacency(Q4_1))
M4_2 = as.matrix(get.adjacency(Q4_2))
M4_3 = as.matrix(get.adjacency(Q4_3))
M4_4 = as.matrix(get.adjacency(Q4_4))
M4_5 = as.matrix(get.adjacency(Q4_5))

# Testando se são binárias
which(M4_1 > 1) # matriz binária
which(M4_2 > 1) # matriz binária
which(M4_3 > 1) # matriz binária
which(M4_4 > 1) # matriz binária
which(M4_5 > 1) # matriz binária

#########################################
# Produzindo o índice com a seguinte ideia:
# Laços sobrepostos (soma = 2) sobre laços existentes (soma > 0)
#----------------------------------
index_por_matriz = c()
nomes = c('1x2', '1x3', '2x3', '3x4', '3x5', '4x5')
# Somando as duas primeiras matrizes

um_dois = M4_1 + M4_2
lacos_total = length(which(um_dois > 0))
lacos_sobrepostos = length(which(um_dois > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)


um_tres = M4_1 + M4_3
lacos_total = length(which(um_tres > 0))
lacos_sobrepostos = length(which(um_tres > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)

dois_tres = M4_2 + M4_3
lacos_total = length(which(dois_tres > 0))
lacos_sobrepostos = length(which(dois_tres > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)

tres_quatro = M4_3 + M4_4
lacos_total = length(which(tres_quatro > 0))
lacos_sobrepostos = length(which(tres_quatro > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)

tres_cinco = M4_3 + M4_5
lacos_total = length(which(tres_cinco > 0))
lacos_sobrepostos = length(which(tres_cinco > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)

quatro_cinco = M4_4 + M4_5
lacos_total = length(which(quatro_cinco > 0))
lacos_sobrepostos = length(which(quatro_cinco > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total
index_por_matriz = c(index_por_matriz, indice_sobreposicao)

############################################################
# Calculando através das densidades

d41 = graph.density(Q4_1)
d42 = graph.density(Q4_2)
d43 = graph.density(Q4_3)
d44 = graph.density(Q4_4)
d45 = graph.density(Q4_5)

index_por_densidade = c(d41/d42, d41/d43, d42/d43, d44/d43, d45/d43, d45/d44)

###############################################
# Montando o banco com os índices calculados

ind = data.frame(por_matriz = index_por_matriz, por_densidade = index_por_densidade)
ind = t(ind)
colnames(ind) = nomes
ind = as.data.frame(ind)
ind

#write_xlsx(ind, 'indice_sobreposicao.xlsx')

