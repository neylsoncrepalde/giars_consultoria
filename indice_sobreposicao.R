#######################################
## PESCARTE
## GIARS
## Índice de sobreposição das matrizes
## Script: Neylson Crepale
#######################################

source('soma_matrizes.R')

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
# Somando as duas primeiras matrizes

um_dois = M4_1 + M4_2
lacos_total = length(which(um_dois > 0))
lacos_sobrepostos = length(which(um_dois > 1))
indice_sobreposicao = lacos_sobrepostos / lacos_total

