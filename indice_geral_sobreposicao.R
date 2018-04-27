##############################################
## PESCARTE
## GIARS
## Índice geral de sobreposição das matrizes
## Script: Neylson Crepale
##############################################

source('soma_matrizes.R')
if (!'writexl' %in% installed.packages()) install.packages('writexl')
if (!'magrittr' %in% installed.packages()) install.packages('magrittr')

library(writexl)
library(magrittr)

######################################
# subsitui os NA's por 0

manha[is.na(manha)] = 0
tarde[is.na(tarde)] = 0

# Extrai todas as matrizes da manhã
Q1R1 = sapply(manha[94:184,2:92], as.numeric)
Q1R2 = sapply(manha[187:277,2:92], as.numeric)
Q1R3 = sapply(manha[280:370,2:92], as.numeric)
Q1R4 = sapply(manha[373:463,2:92], as.numeric)
Q1R5 = sapply(manha[466:556,2:92], as.numeric)
Q1R6 = sapply(manha[559:649,2:92], as.numeric)
Q1R7 = sapply(manha[652:742,2:92], as.numeric)
Q1R8 = sapply(manha[745:835,2:92], as.numeric)
Q1R9 = sapply(manha[838:928,2:92], as.numeric)
Q1R10 = sapply(manha[931:1021,2:92], as.numeric)
Q1R11 = sapply(manha[1024:1114,2:92], as.numeric)
Q1R12 = sapply(manha[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da tarde



