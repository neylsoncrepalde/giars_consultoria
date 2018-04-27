##############################################
## PESCARTE
## GIARS
## Índice geral de sobreposição das matrizes
## Script: Neylson Crepale
##############################################

source('soma_matrizes.R')
if (!'writexl' %in% installed.packages()) install.packages('writexl')

library(writexl)

######################################
# subsitui os NA's por 0

manha[is.na(manha)] = 0
tarde[is.na(tarde)] = 0

# Extrai todas as matrizes da manhã - Q1
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

# Extrai todas as matrizes da manhã - Q2
manha2 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 2)
manha2[is.na(manha2)] = 0

Q2R1 = sapply(manha2[94:184,2:92], as.numeric)
Q2R2 = sapply(manha2[187:277,2:92], as.numeric)
Q2R3 = sapply(manha2[280:370,2:92], as.numeric)
Q2R4 = sapply(manha2[373:463,2:92], as.numeric)
Q2R5 = sapply(manha2[466:556,2:92], as.numeric)
Q2R6 = sapply(manha2[559:649,2:92], as.numeric)
Q2R7 = sapply(manha2[652:742,2:92], as.numeric)
Q2R8 = sapply(manha2[745:835,2:92], as.numeric)
Q2R9 = sapply(manha2[838:928,2:92], as.numeric)
Q2R10 = sapply(manha2[931:1021,2:92], as.numeric)
Q2R11 = sapply(manha2[1024:1114,2:92], as.numeric)
Q2R12 = sapply(manha2[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q3
manha3 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 3)
manha3[is.na(manha3)] = 0

Q3R1 = sapply(manha3[94:184,2:92], as.numeric)
Q3R2 = sapply(manha3[187:277,2:92], as.numeric)
Q3R3 = sapply(manha3[280:370,2:92], as.numeric)
Q3R4 = sapply(manha3[373:463,2:92], as.numeric)
Q3R5 = sapply(manha3[466:556,2:92], as.numeric)
Q3R6 = sapply(manha3[559:649,2:92], as.numeric)
Q3R7 = sapply(manha3[652:742,2:92], as.numeric)
Q3R8 = sapply(manha3[745:835,2:92], as.numeric)
Q3R9 = sapply(manha3[838:928,2:92], as.numeric)
Q3R10 = sapply(manha3[931:1021,2:92], as.numeric)
Q3R11 = sapply(manha3[1024:1114,2:92], as.numeric)
Q3R12 = sapply(manha3[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 1
manha41 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 5)
manha41[is.na(manha41)] = 0

Q41R1 = sapply(manha41[94:184,2:92], as.numeric)
Q41R2 = sapply(manha41[187:277,2:92], as.numeric)
Q41R3 = sapply(manha41[280:370,2:92], as.numeric)
Q41R4 = sapply(manha41[373:463,2:92], as.numeric)
Q41R5 = sapply(manha41[466:556,2:92], as.numeric)
Q41R6 = sapply(manha41[559:649,2:92], as.numeric)
Q41R7 = sapply(manha41[652:742,2:92], as.numeric)
Q41R8 = sapply(manha41[745:835,2:92], as.numeric)
Q41R9 = sapply(manha41[838:928,2:92], as.numeric)
Q41R10 = sapply(manha41[931:1021,2:92], as.numeric)
Q41R11 = sapply(manha41[1024:1114,2:92], as.numeric)
Q41R12 = sapply(manha41[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 2
manha42 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 6)
manha42[is.na(manha42)] = 0

Q42R1 = sapply(manha42[94:184,2:92], as.numeric)
Q42R2 = sapply(manha42[187:277,2:92], as.numeric)
Q42R3 = sapply(manha42[280:370,2:92], as.numeric)
Q42R4 = sapply(manha42[373:463,2:92], as.numeric)
Q42R5 = sapply(manha42[466:556,2:92], as.numeric)
Q42R6 = sapply(manha42[559:649,2:92], as.numeric)
Q42R7 = sapply(manha42[652:742,2:92], as.numeric)
Q42R8 = sapply(manha42[745:835,2:92], as.numeric)
Q42R9 = sapply(manha42[838:928,2:92], as.numeric)
Q42R10 = sapply(manha42[931:1021,2:92], as.numeric)
Q42R11 = sapply(manha42[1024:1114,2:92], as.numeric)
Q42R12 = sapply(manha42[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 3
manha43 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 7)
manha43[is.na(manha43)] = 0

Q43R1 = sapply(manha43[94:184,2:92], as.numeric)
Q43R2 = sapply(manha43[187:277,2:92], as.numeric)
Q43R3 = sapply(manha43[280:370,2:92], as.numeric)
Q43R4 = sapply(manha43[373:463,2:92], as.numeric)
Q43R5 = sapply(manha43[466:556,2:92], as.numeric)
Q43R6 = sapply(manha43[559:649,2:92], as.numeric)
Q43R7 = sapply(manha43[652:742,2:92], as.numeric)
Q43R8 = sapply(manha43[745:835,2:92], as.numeric)
Q43R9 = sapply(manha43[838:928,2:92], as.numeric)
Q43R10 = sapply(manha43[931:1021,2:92], as.numeric)
Q43R11 = sapply(manha43[1024:1114,2:92], as.numeric)
Q43R12 = sapply(manha43[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 4
manha44 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 8)
manha44[is.na(manha44)] = 0

Q44R1 = sapply(manha44[94:184,2:92], as.numeric)
Q44R2 = sapply(manha44[187:277,2:92], as.numeric)
Q44R3 = sapply(manha44[280:370,2:92], as.numeric)
Q44R4 = sapply(manha44[373:463,2:92], as.numeric)
Q44R5 = sapply(manha44[466:556,2:92], as.numeric)
Q44R6 = sapply(manha44[559:649,2:92], as.numeric)
Q44R7 = sapply(manha44[652:742,2:92], as.numeric)
Q44R8 = sapply(manha44[745:835,2:92], as.numeric)
Q44R9 = sapply(manha44[838:928,2:92], as.numeric)
Q44R10 = sapply(manha44[931:1021,2:92], as.numeric)
Q44R11 = sapply(manha44[1024:1114,2:92], as.numeric)
Q44R12 = sapply(manha44[1117:1207,2:92], as.numeric)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 5
manha45 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 9)
manha45[is.na(manha45)] = 0

Q45R1 = sapply(manha45[94:184,2:92], as.numeric)
Q45R2 = sapply(manha45[187:277,2:92], as.numeric)
Q45R3 = sapply(manha45[280:370,2:92], as.numeric)
Q45R4 = sapply(manha45[373:463,2:92], as.numeric)
Q45R5 = sapply(manha45[466:556,2:92], as.numeric)
Q45R6 = sapply(manha45[559:649,2:92], as.numeric)
Q45R7 = sapply(manha45[652:742,2:92], as.numeric)
Q45R8 = sapply(manha45[745:835,2:92], as.numeric)
Q45R9 = sapply(manha45[838:928,2:92], as.numeric)
Q45R10 = sapply(manha45[931:1021,2:92], as.numeric)
Q45R11 = sapply(manha45[1024:1114,2:92], as.numeric)
Q45R12 = sapply(manha45[1117:1207,2:92], as.numeric)

# Exporta as matrizes
savenetwork(Q1R1, 'pescarte_questao1_respondente1.net')
savenetwork(Q1R2, 'pescarte_questao1_respondente2.net')
savenetwork(Q1R3, 'pescarte_questao1_respondente3.net')
savenetwork(Q1R4, 'pescarte_questao1_respondente4.net')
savenetwork(Q1R5, 'pescarte_questao1_respondente5.net')
savenetwork(Q1R6, 'pescarte_questao1_respondente6.net')
savenetwork(Q1R7, 'pescarte_questao1_respondente7.net')
savenetwork(Q1R8, 'pescarte_questao1_respondente8.net')
savenetwork(Q1R9, 'pescarte_questao1_respondente9.net')
savenetwork(Q1R10, 'pescarte_questao1_respondente10.net')
savenetwork(Q1R11, 'pescarte_questao1_respondente11.net')
savenetwork(Q1R12, 'pescarte_questao1_respondente12.net')

savenetwork(Q2R1, 'pescarte_questao2_respondente1.net')
savenetwork(Q2R2, 'pescarte_questao2_respondente2.net')
savenetwork(Q2R3, 'pescarte_questao2_respondente3.net')
savenetwork(Q2R4, 'pescarte_questao2_respondente4.net')
savenetwork(Q2R5, 'pescarte_questao2_respondente5.net')
savenetwork(Q2R6, 'pescarte_questao2_respondente6.net')
savenetwork(Q2R7, 'pescarte_questao2_respondente7.net')
savenetwork(Q2R8, 'pescarte_questao2_respondente8.net')
savenetwork(Q2R9, 'pescarte_questao2_respondente9.net')
savenetwork(Q2R10, 'pescarte_questao2_respondente10.net')
savenetwork(Q2R11, 'pescarte_questao2_respondente11.net')
savenetwork(Q2R12, 'pescarte_questao2_respondente12.net')

savenetwork(Q3R1, 'pescarte_questao3_respondente1.net')
savenetwork(Q3R2, 'pescarte_questao3_respondente2.net')
savenetwork(Q3R3, 'pescarte_questao3_respondente3.net')
savenetwork(Q3R4, 'pescarte_questao3_respondente4.net')
savenetwork(Q3R5, 'pescarte_questao3_respondente5.net')
savenetwork(Q3R6, 'pescarte_questao3_respondente6.net')
savenetwork(Q3R7, 'pescarte_questao3_respondente7.net')
savenetwork(Q3R8, 'pescarte_questao3_respondente8.net')
savenetwork(Q3R9, 'pescarte_questao3_respondente9.net')
savenetwork(Q3R10, 'pescarte_questao3_respondente10.net')
savenetwork(Q3R11, 'pescarte_questao3_respondente11.net')
savenetwork(Q3R12, 'pescarte_questao3_respondente12.net')

savenetwork(Q41R1, 'pescarte_questao41_respondente1.net')
savenetwork(Q41R2, 'pescarte_questao41_respondente2.net')
savenetwork(Q41R3, 'pescarte_questao41_respondente3.net')
savenetwork(Q41R4, 'pescarte_questao41_respondente4.net')
savenetwork(Q41R5, 'pescarte_questao41_respondente5.net')
savenetwork(Q41R6, 'pescarte_questao41_respondente6.net')
savenetwork(Q41R7, 'pescarte_questao41_respondente7.net')
savenetwork(Q41R8, 'pescarte_questao41_respondente8.net')
savenetwork(Q41R9, 'pescarte_questao41_respondente9.net')
savenetwork(Q41R10, 'pescarte_questao41_respondente10.net')
savenetwork(Q41R11, 'pescarte_questao41_respondente11.net')
savenetwork(Q41R12, 'pescarte_questao41_respondente12.net')


savenetwork(Q42R1, 'pescarte_questao42_respondente1.net')
savenetwork(Q42R2, 'pescarte_questao42_respondente2.net')
savenetwork(Q42R3, 'pescarte_questao42_respondente3.net')
savenetwork(Q42R4, 'pescarte_questao42_respondente4.net')
savenetwork(Q42R5, 'pescarte_questao42_respondente5.net')
savenetwork(Q42R6, 'pescarte_questao42_respondente6.net')
savenetwork(Q42R7, 'pescarte_questao42_respondente7.net')
savenetwork(Q42R8, 'pescarte_questao42_respondente8.net')
savenetwork(Q42R9, 'pescarte_questao42_respondente9.net')
savenetwork(Q42R10, 'pescarte_questao42_respondente10.net')
savenetwork(Q42R11, 'pescarte_questao42_respondente11.net')
savenetwork(Q42R12, 'pescarte_questao42_respondente12.net')


savenetwork(Q43R1, 'pescarte_questao43_respondente1.net')
savenetwork(Q43R2, 'pescarte_questao43_respondente2.net')
savenetwork(Q43R3, 'pescarte_questao43_respondente3.net')
savenetwork(Q43R4, 'pescarte_questao43_respondente4.net')
savenetwork(Q43R5, 'pescarte_questao43_respondente5.net')
savenetwork(Q43R6, 'pescarte_questao43_respondente6.net')
savenetwork(Q43R7, 'pescarte_questao43_respondente7.net')
savenetwork(Q43R8, 'pescarte_questao43_respondente8.net')
savenetwork(Q43R9, 'pescarte_questao43_respondente9.net')
savenetwork(Q43R10, 'pescarte_questao43_respondente10.net')
savenetwork(Q43R11, 'pescarte_questao43_respondente11.net')
savenetwork(Q43R12, 'pescarte_questao43_respondente12.net')


savenetwork(Q44R1, 'pescarte_questao44_respondente1.net')
savenetwork(Q44R2, 'pescarte_questao44_respondente2.net')
savenetwork(Q44R3, 'pescarte_questao44_respondente3.net')
savenetwork(Q44R4, 'pescarte_questao44_respondente4.net')
savenetwork(Q44R5, 'pescarte_questao44_respondente5.net')
savenetwork(Q44R6, 'pescarte_questao44_respondente6.net')
savenetwork(Q44R7, 'pescarte_questao44_respondente7.net')
savenetwork(Q44R8, 'pescarte_questao44_respondente8.net')
savenetwork(Q44R9, 'pescarte_questao44_respondente9.net')
savenetwork(Q44R10, 'pescarte_questao44_respondente10.net')
savenetwork(Q44R11, 'pescarte_questao44_respondente11.net')
savenetwork(Q44R12, 'pescarte_questao44_respondente12.net')

savenetwork(Q45R1, 'pescarte_questao45_respondente1.net')
savenetwork(Q45R2, 'pescarte_questao45_respondente2.net')
savenetwork(Q45R3, 'pescarte_questao45_respondente3.net')
savenetwork(Q45R4, 'pescarte_questao45_respondente4.net')
savenetwork(Q45R5, 'pescarte_questao45_respondente5.net')
savenetwork(Q45R6, 'pescarte_questao45_respondente6.net')
savenetwork(Q45R7, 'pescarte_questao45_respondente7.net')
savenetwork(Q45R8, 'pescarte_questao45_respondente8.net')
savenetwork(Q45R9, 'pescarte_questao45_respondente9.net')
savenetwork(Q45R10, 'pescarte_questao45_respondente10.net')
savenetwork(Q45R11, 'pescarte_questao45_respondente11.net')
savenetwork(Q45R12, 'pescarte_questao45_respondente12.net')

#---------------------------------------------








