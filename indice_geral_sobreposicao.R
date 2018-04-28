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
Q1R1 = sapply(manha[94:184,2:92], as.numeric); rownames(Q1R1) = colnames(Q1R1)
Q1R2 = sapply(manha[187:277,2:92], as.numeric); rownames(Q1R2) = colnames(Q1R2)
Q1R3 = sapply(manha[280:370,2:92], as.numeric); rownames(Q1R3) = colnames(Q1R3)
Q1R4 = sapply(manha[373:463,2:92], as.numeric); rownames(Q1R4) = colnames(Q1R4)
Q1R5 = sapply(manha[466:556,2:92], as.numeric); rownames(Q1R5) = colnames(Q1R5)
Q1R6 = sapply(manha[559:649,2:92], as.numeric); rownames(Q1R6) = colnames(Q1R6)
Q1R7 = sapply(manha[652:742,2:92], as.numeric); rownames(Q1R7) = colnames(Q1R7)
Q1R8 = sapply(manha[745:835,2:92], as.numeric); rownames(Q1R8) = colnames(Q1R8)
Q1R9 = sapply(manha[838:928,2:92], as.numeric); rownames(Q1R9) = colnames(Q1R9)
Q1R10 = sapply(manha[931:1021,2:92], as.numeric); rownames(Q1R10) = colnames(Q1R10)
Q1R11 = sapply(manha[1024:1114,2:92], as.numeric); rownames(Q1R11) = colnames(Q1R11)
Q1R12 = sapply(manha[1117:1207,2:92], as.numeric); rownames(Q1R12) = colnames(Q1R12)

# Extrai todas as matrizes da manhã - Q2
manha2 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 2)
manha2[is.na(manha2)] = 0

Q2R1 = sapply(manha2[94:184,2:92], as.numeric); rownames(Q2R1) = colnames(Q2R1)
Q2R2 = sapply(manha2[187:277,2:92], as.numeric); rownames(Q2R2) = colnames(Q2R2)
Q2R3 = sapply(manha2[280:370,2:92], as.numeric); rownames(Q2R3) = colnames(Q2R3)
Q2R4 = sapply(manha2[373:463,2:92], as.numeric); rownames(Q2R4) = colnames(Q2R4)
Q2R5 = sapply(manha2[466:556,2:92], as.numeric); rownames(Q2R5) = colnames(Q2R5)
Q2R6 = sapply(manha2[559:649,2:92], as.numeric); rownames(Q2R6) = colnames(Q2R6)
Q2R7 = sapply(manha2[652:742,2:92], as.numeric); rownames(Q2R7) = colnames(Q2R7)
Q2R8 = sapply(manha2[745:835,2:92], as.numeric); rownames(Q2R8) = colnames(Q2R8)
Q2R9 = sapply(manha2[838:928,2:92], as.numeric); rownames(Q2R9) = colnames(Q2R9)
Q2R10 = sapply(manha2[931:1021,2:92], as.numeric); rownames(Q2R10) = colnames(Q2R10)
Q2R11 = sapply(manha2[1024:1114,2:92], as.numeric); rownames(Q2R11) = colnames(Q2R11)
Q2R12 = sapply(manha2[1117:1207,2:92], as.numeric); rownames(Q2R12) = colnames(Q2R12)

# Extrai todas as matrizes da manhã - Q3
manha3 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 3)
manha3[is.na(manha3)] = 0

Q3R1 = sapply(manha3[94:184,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R2 = sapply(manha3[187:277,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R3 = sapply(manha3[280:370,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R4 = sapply(manha3[373:463,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R5 = sapply(manha3[466:556,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R6 = sapply(manha3[559:649,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R7 = sapply(manha3[652:742,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R8 = sapply(manha3[745:835,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R9 = sapply(manha3[838:928,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R10 = sapply(manha3[931:1021,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R11 = sapply(manha3[1024:1114,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)
Q3R12 = sapply(manha3[1117:1207,2:92], as.numeric); rownames(Q3R1) = colnames(Q3R1)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 1
manha41 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 5)
manha41[is.na(manha41)] = 0

Q41R1 = sapply(manha41[94:184,2:92], as.numeric); rownames(Q41R1) = colnames(Q41R1)
Q41R2 = sapply(manha41[187:277,2:92], as.numeric); rownames(Q41R2) = colnames(Q41R2)
Q41R3 = sapply(manha41[280:370,2:92], as.numeric); rownames(Q41R3) = colnames(Q41R3)
Q41R4 = sapply(manha41[373:463,2:92], as.numeric); rownames(Q41R4) = colnames(Q41R4)
Q41R5 = sapply(manha41[466:556,2:92], as.numeric); rownames(Q41R5) = colnames(Q41R5)
Q41R6 = sapply(manha41[559:649,2:92], as.numeric); rownames(Q41R6) = colnames(Q41R6)
Q41R7 = sapply(manha41[652:742,2:92], as.numeric); rownames(Q41R7) = colnames(Q41R7)
Q41R8 = sapply(manha41[745:835,2:92], as.numeric); rownames(Q41R8) = colnames(Q41R8)
Q41R9 = sapply(manha41[838:928,2:92], as.numeric); rownames(Q41R9) = colnames(Q41R9)
Q41R10 = sapply(manha41[931:1021,2:92], as.numeric); rownames(Q41R10) = colnames(Q41R10)
Q41R11 = sapply(manha41[1024:1114,2:92], as.numeric); rownames(Q41R11) = colnames(Q41R11)
Q41R12 = sapply(manha41[1117:1207,2:92], as.numeric); rownames(Q41R12) = colnames(Q41R12)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 2
manha42 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 6)
manha42[is.na(manha42)] = 0

Q42R1 = sapply(manha42[94:184,2:92], as.numeric);     rownames(Q42R1) =  colnames(Q42R1)
Q42R2 = sapply(manha42[187:277,2:92], as.numeric);    rownames(Q42R2) =  colnames(Q42R2)
Q42R3 = sapply(manha42[280:370,2:92], as.numeric);    rownames(Q42R3) =  colnames(Q42R3)
Q42R4 = sapply(manha42[373:463,2:92], as.numeric);    rownames(Q42R4) =  colnames(Q42R4)
Q42R5 = sapply(manha42[466:556,2:92], as.numeric);    rownames(Q42R5) =  colnames(Q42R5)
Q42R6 = sapply(manha42[559:649,2:92], as.numeric);    rownames(Q42R6) =  colnames(Q42R6)
Q42R7 = sapply(manha42[652:742,2:92], as.numeric);    rownames(Q42R7) =  colnames(Q42R7)
Q42R8 = sapply(manha42[745:835,2:92], as.numeric);    rownames(Q42R8) =  colnames(Q42R8)
Q42R9 = sapply(manha42[838:928,2:92], as.numeric);    rownames(Q42R9) =  colnames(Q42R9)
Q42R10 = sapply(manha42[931:1021,2:92], as.numeric);  rownames(Q42R10) = colnames(Q42R10)
Q42R11 = sapply(manha42[1024:1114,2:92], as.numeric); rownames(Q42R11) = colnames(Q42R11)
Q42R12 = sapply(manha42[1117:1207,2:92], as.numeric); rownames(Q42R12) = colnames(Q42R12)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 3
manha43 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 7)
manha43[is.na(manha43)] = 0

Q43R1 = sapply(manha43[94:184,2:92], as.numeric);     rownames(Q43R1) =  colnames(Q43R1)
Q43R2 = sapply(manha43[187:277,2:92], as.numeric);    rownames(Q43R2) =  colnames(Q43R2)
Q43R3 = sapply(manha43[280:370,2:92], as.numeric);    rownames(Q43R3) =  colnames(Q43R3)
Q43R4 = sapply(manha43[373:463,2:92], as.numeric);    rownames(Q43R4) =  colnames(Q43R4)
Q43R5 = sapply(manha43[466:556,2:92], as.numeric);    rownames(Q43R5) =  colnames(Q43R5)
Q43R6 = sapply(manha43[559:649,2:92], as.numeric);    rownames(Q43R6) =  colnames(Q43R6)
Q43R7 = sapply(manha43[652:742,2:92], as.numeric);    rownames(Q43R7) =  colnames(Q43R7)
Q43R8 = sapply(manha43[745:835,2:92], as.numeric);    rownames(Q43R8) =  colnames(Q43R8)
Q43R9 = sapply(manha43[838:928,2:92], as.numeric);    rownames(Q43R9) =  colnames(Q43R9)
Q43R10 = sapply(manha43[931:1021,2:92], as.numeric);  rownames(Q43R10) = colnames(Q43R10)
Q43R11 = sapply(manha43[1024:1114,2:92], as.numeric); rownames(Q43R11) = colnames(Q43R11)
Q43R12 = sapply(manha43[1117:1207,2:92], as.numeric); rownames(Q43R12) = colnames(Q43R12)


# Extrai todas as matrizes da manhã - Q4 quem respondeu 4
manha44 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 8)
manha44[is.na(manha44)] = 0

Q44R1 = sapply(manha44[94:184,2:92], as.numeric);     rownames(Q44R1) =  colnames(Q44R1)
Q44R2 = sapply(manha44[187:277,2:92], as.numeric);    rownames(Q44R2) =  colnames(Q44R2)
Q44R3 = sapply(manha44[280:370,2:92], as.numeric);    rownames(Q44R3) =  colnames(Q44R3)
Q44R4 = sapply(manha44[373:463,2:92], as.numeric);    rownames(Q44R4) =  colnames(Q44R4)
Q44R5 = sapply(manha44[466:556,2:92], as.numeric);    rownames(Q44R5) =  colnames(Q44R5)
Q44R6 = sapply(manha44[559:649,2:92], as.numeric);    rownames(Q44R6) =  colnames(Q44R6)
Q44R7 = sapply(manha44[652:742,2:92], as.numeric);    rownames(Q44R7) =  colnames(Q44R7)
Q44R8 = sapply(manha44[745:835,2:92], as.numeric);    rownames(Q44R8) =  colnames(Q44R8)
Q44R9 = sapply(manha44[838:928,2:92], as.numeric);    rownames(Q44R9) =  colnames(Q44R9)
Q44R10 = sapply(manha44[931:1021,2:92], as.numeric);  rownames(Q44R10) = colnames(Q44R10)
Q44R11 = sapply(manha44[1024:1114,2:92], as.numeric); rownames(Q44R11) = colnames(Q44R11)
Q44R12 = sapply(manha44[1117:1207,2:92], as.numeric); rownames(Q44R12) = colnames(Q44R12)

# Extrai todas as matrizes da manhã - Q4 quem respondeu 5
manha45 = read_xlsx('SOMA MATRIZES MANHÃ.xlsx', sheet = 9)
manha45[is.na(manha45)] = 0

Q45R1 = sapply(manha45[94:184,2:92], as.numeric);     rownames(Q45R1) =  colnames(Q45R1)
Q45R2 = sapply(manha45[187:277,2:92], as.numeric);    rownames(Q45R2) =  colnames(Q45R2)
Q45R3 = sapply(manha45[280:370,2:92], as.numeric);    rownames(Q45R3) =  colnames(Q45R3)
Q45R4 = sapply(manha45[373:463,2:92], as.numeric);    rownames(Q45R4) =  colnames(Q45R4)
Q45R5 = sapply(manha45[466:556,2:92], as.numeric);    rownames(Q45R5) =  colnames(Q45R5)
Q45R6 = sapply(manha45[559:649,2:92], as.numeric);    rownames(Q45R6) =  colnames(Q45R6)
Q45R7 = sapply(manha45[652:742,2:92], as.numeric);    rownames(Q45R7) =  colnames(Q45R7)
Q45R8 = sapply(manha45[745:835,2:92], as.numeric);    rownames(Q45R8) =  colnames(Q45R8)
Q45R9 = sapply(manha45[838:928,2:92], as.numeric);    rownames(Q45R9) =  colnames(Q45R9)
Q45R10 = sapply(manha45[931:1021,2:92], as.numeric);  rownames(Q45R10) = colnames(Q45R10)
Q45R11 = sapply(manha45[1024:1114,2:92], as.numeric); rownames(Q45R11) = colnames(Q45R11)
Q45R12 = sapply(manha45[1117:1207,2:92], as.numeric); rownames(Q45R12) = colnames(Q45R12)

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
###############################################

### Extraindo as matrizes da tarde

TQ1R1 =  sapply(tarde[76:148,2:74], as.numeric);  rownames(TQ1R1) =  colnames(TQ1R1)
TQ1R2 =  sapply(tarde[151:223,2:74], as.numeric); rownames(TQ1R2) =  colnames(TQ1R2)
TQ1R3 =  sapply(tarde[226:298,2:74], as.numeric); rownames(TQ1R3) =  colnames(TQ1R3)
TQ1R4 =  sapply(tarde[301:373,2:74], as.numeric); rownames(TQ1R4) =  colnames(TQ1R4)
TQ1R5 =  sapply(tarde[376:448,2:74], as.numeric); rownames(TQ1R5) =  colnames(TQ1R5)
TQ1R6 =  sapply(tarde[451:523,2:74], as.numeric); rownames(TQ1R6) =  colnames(TQ1R6)
TQ1R7 =  sapply(tarde[526:598,2:74], as.numeric); rownames(TQ1R7) =  colnames(TQ1R7)
TQ1R8 =  sapply(tarde[601:673,2:74], as.numeric); rownames(TQ1R8) =  colnames(TQ1R8)
TQ1R9 =  sapply(tarde[676:748,2:74], as.numeric); rownames(TQ1R9) =  colnames(TQ1R9)
TQ1R10 = sapply(tarde[751:823,2:74], as.numeric); rownames(TQ1R10) = colnames(TQ1R10)
TQ1R11 = sapply(tarde[826:898,2:74], as.numeric); rownames(TQ1R11) = colnames(TQ1R11)

### Extraindo as matrizes da tarde - Questão 2
tarde2 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 2)
tarde2[is.na(tarde2)] = 0

TQ2R1 =  sapply(tarde2[76:148,2:74], as.numeric);  rownames(TQ2R1) =  colnames(TQ2R1)
TQ2R2 =  sapply(tarde2[151:223,2:74], as.numeric); rownames(TQ2R2) =  colnames(TQ2R2)
TQ2R3 =  sapply(tarde2[226:298,2:74], as.numeric); rownames(TQ2R3) =  colnames(TQ2R3)
TQ2R4 =  sapply(tarde2[301:373,2:74], as.numeric); rownames(TQ2R4) =  colnames(TQ2R4)
TQ2R5 =  sapply(tarde2[376:448,2:74], as.numeric); rownames(TQ2R5) =  colnames(TQ2R5)
TQ2R6 =  sapply(tarde2[451:523,2:74], as.numeric); rownames(TQ2R6) =  colnames(TQ2R6)
TQ2R7 =  sapply(tarde2[526:598,2:74], as.numeric); rownames(TQ2R7) =  colnames(TQ2R7)
TQ2R8 =  sapply(tarde2[601:673,2:74], as.numeric); rownames(TQ2R8) =  colnames(TQ2R8)
TQ2R9 =  sapply(tarde2[676:748,2:74], as.numeric); rownames(TQ2R9) =  colnames(TQ2R9)
TQ2R10 = sapply(tarde2[751:823,2:74], as.numeric); rownames(TQ2R10) = colnames(TQ2R10)
TQ2R11 = sapply(tarde2[826:898,2:74], as.numeric); rownames(TQ2R11) = colnames(TQ2R11)

### Extraindo as matrizes da tarde - Questão 3
tarde3 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 3)
tarde3[is.na(tarde3)] = 0

TQ3R1 =  sapply(tarde3[76:148,2:74], as.numeric);  rownames(TQ3R1) =  colnames(TQ3R1)
TQ3R2 =  sapply(tarde3[151:223,2:74], as.numeric); rownames(TQ3R2) =  colnames(TQ3R2)
TQ3R3 =  sapply(tarde3[226:298,2:74], as.numeric); rownames(TQ3R3) =  colnames(TQ3R3)
TQ3R4 =  sapply(tarde3[301:373,2:74], as.numeric); rownames(TQ3R4) =  colnames(TQ3R4)
TQ3R5 =  sapply(tarde3[376:448,2:74], as.numeric); rownames(TQ3R5) =  colnames(TQ3R5)
TQ3R6 =  sapply(tarde3[451:523,2:74], as.numeric); rownames(TQ3R6) =  colnames(TQ3R6)
TQ3R7 =  sapply(tarde3[526:598,2:74], as.numeric); rownames(TQ3R7) =  colnames(TQ3R7)
TQ3R8 =  sapply(tarde3[601:673,2:74], as.numeric); rownames(TQ3R8) =  colnames(TQ3R8)
TQ3R9 =  sapply(tarde3[676:748,2:74], as.numeric); rownames(TQ3R9) =  colnames(TQ3R9)
TQ3R10 = sapply(tarde3[751:823,2:74], as.numeric); rownames(TQ3R10) = colnames(TQ3R10)
TQ3R11 = sapply(tarde3[826:898,2:74], as.numeric); rownames(TQ3R11) = colnames(TQ3R11)

### Extraindo as matrizes da tarde - Questão 4 respondeu 1
tarde41 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 5)
tarde41[is.na(tarde41)] = 0

TQ41R1 =  sapply(tarde41[76:148,2:74], as.numeric);  rownames(TQ41R1) =  colnames(TQ41R1)
TQ41R2 =  sapply(tarde41[151:223,2:74], as.numeric); rownames(TQ41R2) =  colnames(TQ41R2)
TQ41R3 =  sapply(tarde41[226:298,2:74], as.numeric); rownames(TQ41R3) =  colnames(TQ41R3)
TQ41R4 =  sapply(tarde41[301:373,2:74], as.numeric); rownames(TQ41R4) =  colnames(TQ41R4)
TQ41R5 =  sapply(tarde41[376:448,2:74], as.numeric); rownames(TQ41R5) =  colnames(TQ41R5)
TQ41R6 =  sapply(tarde41[451:523,2:74], as.numeric); rownames(TQ41R6) =  colnames(TQ41R6)
TQ41R7 =  sapply(tarde41[526:598,2:74], as.numeric); rownames(TQ41R7) =  colnames(TQ41R7)
TQ41R8 =  sapply(tarde41[601:673,2:74], as.numeric); rownames(TQ41R8) =  colnames(TQ41R8)
TQ41R9 =  sapply(tarde41[676:748,2:74], as.numeric); rownames(TQ41R9) =  colnames(TQ41R9)
TQ41R10 = sapply(tarde41[751:823,2:74], as.numeric); rownames(TQ41R10) = colnames(TQ41R10)
TQ41R11 = sapply(tarde41[826:898,2:74], as.numeric); rownames(TQ41R11) = colnames(TQ41R11)

### Extraindo as matrizes da tarde - Questão 4 respondeu 2
tarde42 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 6)
tarde42[is.na(tarde42)] = 0

TQ42R1 =  sapply(tarde42[76:148,2:74], as.numeric);  rownames(TQ42R1) =  colnames(TQ42R1)
TQ42R2 =  sapply(tarde42[151:223,2:74], as.numeric); rownames(TQ42R2) =  colnames(TQ42R2)
TQ42R3 =  sapply(tarde42[226:298,2:74], as.numeric); rownames(TQ42R3) =  colnames(TQ42R3)
TQ42R4 =  sapply(tarde42[301:373,2:74], as.numeric); rownames(TQ42R4) =  colnames(TQ42R4)
TQ42R5 =  sapply(tarde42[376:448,2:74], as.numeric); rownames(TQ42R5) =  colnames(TQ42R5)
TQ42R6 =  sapply(tarde42[451:523,2:74], as.numeric); rownames(TQ42R6) =  colnames(TQ42R6)
TQ42R7 =  sapply(tarde42[526:598,2:74], as.numeric); rownames(TQ42R7) =  colnames(TQ42R7)
TQ42R8 =  sapply(tarde42[601:673,2:74], as.numeric); rownames(TQ42R8) =  colnames(TQ42R8)
TQ42R9 =  sapply(tarde42[676:748,2:74], as.numeric); rownames(TQ42R9) =  colnames(TQ42R9)
TQ42R10 = sapply(tarde42[751:823,2:74], as.numeric); rownames(TQ42R10) = colnames(TQ42R10)
TQ42R11 = sapply(tarde42[826:898,2:74], as.numeric); rownames(TQ42R11) = colnames(TQ42R11)

### Extraindo as matrizes da tarde - Questão 4 respondeu 3
tarde43 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 7)
tarde43[is.na(tarde43)] = 0

TQ43R1 =  sapply(tarde43[76:148,2:74], as.numeric);  rownames(TQ43R1) =  colnames(TQ43R1)
TQ43R2 =  sapply(tarde43[151:223,2:74], as.numeric); rownames(TQ43R2) =  colnames(TQ43R2)
TQ43R3 =  sapply(tarde43[226:298,2:74], as.numeric); rownames(TQ43R3) =  colnames(TQ43R3)
TQ43R4 =  sapply(tarde43[301:373,2:74], as.numeric); rownames(TQ43R4) =  colnames(TQ43R4)
TQ43R5 =  sapply(tarde43[376:448,2:74], as.numeric); rownames(TQ43R5) =  colnames(TQ43R5)
TQ43R6 =  sapply(tarde43[451:523,2:74], as.numeric); rownames(TQ43R6) =  colnames(TQ43R6)
TQ43R7 =  sapply(tarde43[526:598,2:74], as.numeric); rownames(TQ43R7) =  colnames(TQ43R7)
TQ43R8 =  sapply(tarde43[601:673,2:74], as.numeric); rownames(TQ43R8) =  colnames(TQ43R8)
TQ43R9 =  sapply(tarde43[676:748,2:74], as.numeric); rownames(TQ43R9) =  colnames(TQ43R9)
TQ43R10 = sapply(tarde43[751:823,2:74], as.numeric); rownames(TQ43R10) = colnames(TQ43R10)
TQ43R11 = sapply(tarde43[826:898,2:74], as.numeric); rownames(TQ43R11) = colnames(TQ43R11)

### Extraindo as matrizes da tarde - Questão 4 respondeu 4
tarde44 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 8)
tarde44[is.na(tarde44)] = 0

TQ44R1 =  sapply(tarde44[76:148,2:74], as.numeric);  rownames(TQ44R1) =  colnames(TQ44R1)
TQ44R2 =  sapply(tarde44[151:223,2:74], as.numeric); rownames(TQ44R2) =  colnames(TQ44R2)
TQ44R3 =  sapply(tarde44[226:298,2:74], as.numeric); rownames(TQ44R3) =  colnames(TQ44R3)
TQ44R4 =  sapply(tarde44[301:373,2:74], as.numeric); rownames(TQ44R4) =  colnames(TQ44R4)
TQ44R5 =  sapply(tarde44[376:448,2:74], as.numeric); rownames(TQ44R5) =  colnames(TQ44R5)
TQ44R6 =  sapply(tarde44[451:523,2:74], as.numeric); rownames(TQ44R6) =  colnames(TQ44R6)
TQ44R7 =  sapply(tarde44[526:598,2:74], as.numeric); rownames(TQ44R7) =  colnames(TQ44R7)
TQ44R8 =  sapply(tarde44[601:673,2:74], as.numeric); rownames(TQ44R8) =  colnames(TQ44R8)
TQ44R9 =  sapply(tarde44[676:748,2:74], as.numeric); rownames(TQ44R9) =  colnames(TQ44R9)
TQ44R10 = sapply(tarde44[751:823,2:74], as.numeric); rownames(TQ44R10) = colnames(TQ44R10)
TQ44R11 = sapply(tarde44[826:898,2:74], as.numeric); rownames(TQ44R11) = colnames(TQ44R11)

### Extraindo as matrizes da tarde - Questão 4 respondeu 5
tarde45 = read_xlsx('SOMA DAS MATRIZES TARDE.xlsx', sheet = 9)
tarde45[is.na(tarde45)] = 0

TQ45R1 =  sapply(tarde45[76:148,2:74], as.numeric);  rownames(TQ45R1) =  colnames(TQ45R1)
TQ45R2 =  sapply(tarde45[151:223,2:74], as.numeric); rownames(TQ45R2) =  colnames(TQ45R2)
TQ45R3 =  sapply(tarde45[226:298,2:74], as.numeric); rownames(TQ45R3) =  colnames(TQ45R3)
TQ45R4 =  sapply(tarde45[301:373,2:74], as.numeric); rownames(TQ45R4) =  colnames(TQ45R4)
TQ45R5 =  sapply(tarde45[376:448,2:74], as.numeric); rownames(TQ45R5) =  colnames(TQ45R5)
TQ45R6 =  sapply(tarde45[451:523,2:74], as.numeric); rownames(TQ45R6) =  colnames(TQ45R6)
TQ45R7 =  sapply(tarde45[526:598,2:74], as.numeric); rownames(TQ45R7) =  colnames(TQ45R7)
TQ45R8 =  sapply(tarde45[601:673,2:74], as.numeric); rownames(TQ45R8) =  colnames(TQ45R8)
TQ45R9 =  sapply(tarde45[676:748,2:74], as.numeric); rownames(TQ45R9) =  colnames(TQ45R9)
TQ45R10 = sapply(tarde45[751:823,2:74], as.numeric); rownames(TQ45R10) = colnames(TQ45R10)
TQ45R11 = sapply(tarde45[826:898,2:74], as.numeric); rownames(TQ45R11) = colnames(TQ45R11)


############################################################
### Exportando as matrizes da tarde

savenetwork(TQ1R1,  'pescarte_questao1_tarde_respondente1.net')
savenetwork(TQ1R2,  'pescarte_questao1_tarde_respondente2.net')
savenetwork(TQ1R3,  'pescarte_questao1_tarde_respondente3.net')
savenetwork(TQ1R4,  'pescarte_questao1_tarde_respondente4.net')
savenetwork(TQ1R5,  'pescarte_questao1_tarde_respondente5.net')
savenetwork(TQ1R6,  'pescarte_questao1_tarde_respondente6.net')
savenetwork(TQ1R7,  'pescarte_questao1_tarde_respondente7.net')
savenetwork(TQ1R8,  'pescarte_questao1_tarde_respondente8.net')
savenetwork(TQ1R9,  'pescarte_questao1_tarde_respondente9.net')
savenetwork(TQ1R10, 'pescarte_questao1_tarde_respondente10.net')
savenetwork(TQ1R11, 'pescarte_questao1_tarde_respondente11.net')

savenetwork(TQ2R1,  'pescarte_questao2_tarde_respondente1.net')
savenetwork(TQ2R2,  'pescarte_questao2_tarde_respondente2.net')
savenetwork(TQ2R3,  'pescarte_questao2_tarde_respondente3.net')
savenetwork(TQ2R4,  'pescarte_questao2_tarde_respondente4.net')
savenetwork(TQ2R5,  'pescarte_questao2_tarde_respondente5.net')
savenetwork(TQ2R6,  'pescarte_questao2_tarde_respondente6.net')
savenetwork(TQ2R7,  'pescarte_questao2_tarde_respondente7.net')
savenetwork(TQ2R8,  'pescarte_questao2_tarde_respondente8.net')
savenetwork(TQ2R9,  'pescarte_questao2_tarde_respondente9.net')
savenetwork(TQ2R10, 'pescarte_questao2_tarde_respondente10.net')
savenetwork(TQ2R11, 'pescarte_questao2_tarde_respondente11.net')

savenetwork(TQ3R1,  'pescarte_questao3_tarde_respondente1.net')
savenetwork(TQ3R2,  'pescarte_questao3_tarde_respondente2.net')
savenetwork(TQ3R3,  'pescarte_questao3_tarde_respondente3.net')
savenetwork(TQ3R4,  'pescarte_questao3_tarde_respondente4.net')
savenetwork(TQ3R5,  'pescarte_questao3_tarde_respondente5.net')
savenetwork(TQ3R6,  'pescarte_questao3_tarde_respondente6.net')
savenetwork(TQ3R7,  'pescarte_questao3_tarde_respondente7.net')
savenetwork(TQ3R8,  'pescarte_questao3_tarde_respondente8.net')
savenetwork(TQ3R9,  'pescarte_questao3_tarde_respondente9.net')
savenetwork(TQ3R10, 'pescarte_questao3_tarde_respondente10.net')
savenetwork(TQ3R11, 'pescarte_questao3_tarde_respondente11.net')

savenetwork(TQ41R1,  'pescarte_questao41_tarde_respondente1.net')
savenetwork(TQ41R2,  'pescarte_questao41_tarde_respondente2.net')
savenetwork(TQ41R3,  'pescarte_questao41_tarde_respondente3.net')
savenetwork(TQ41R4,  'pescarte_questao41_tarde_respondente4.net')
savenetwork(TQ41R5,  'pescarte_questao41_tarde_respondente5.net')
savenetwork(TQ41R6,  'pescarte_questao41_tarde_respondente6.net')
savenetwork(TQ41R7,  'pescarte_questao41_tarde_respondente7.net')
savenetwork(TQ41R8,  'pescarte_questao41_tarde_respondente8.net')
savenetwork(TQ41R9,  'pescarte_questao41_tarde_respondente9.net')
savenetwork(TQ41R10, 'pescarte_questao41_tarde_respondente10.net')
savenetwork(TQ41R11, 'pescarte_questao41_tarde_respondente11.net')

savenetwork(TQ42R1,  'pescarte_questao42_tarde_respondente1.net')
savenetwork(TQ42R2,  'pescarte_questao42_tarde_respondente2.net')
savenetwork(TQ42R3,  'pescarte_questao42_tarde_respondente3.net')
savenetwork(TQ42R4,  'pescarte_questao42_tarde_respondente4.net')
savenetwork(TQ42R5,  'pescarte_questao42_tarde_respondente5.net')
savenetwork(TQ42R6,  'pescarte_questao42_tarde_respondente6.net')
savenetwork(TQ42R7,  'pescarte_questao42_tarde_respondente7.net')
savenetwork(TQ42R8,  'pescarte_questao42_tarde_respondente8.net')
savenetwork(TQ42R9,  'pescarte_questao42_tarde_respondente9.net')
savenetwork(TQ42R10, 'pescarte_questao42_tarde_respondente10.net')
savenetwork(TQ42R11, 'pescarte_questao42_tarde_respondente11.net')

savenetwork(TQ43R1,  'pescarte_questao43_tarde_respondente1.net')
savenetwork(TQ43R2,  'pescarte_questao43_tarde_respondente2.net')
savenetwork(TQ43R3,  'pescarte_questao43_tarde_respondente3.net')
savenetwork(TQ43R4,  'pescarte_questao43_tarde_respondente4.net')
savenetwork(TQ43R5,  'pescarte_questao43_tarde_respondente5.net')
savenetwork(TQ43R6,  'pescarte_questao43_tarde_respondente6.net')
savenetwork(TQ43R7,  'pescarte_questao43_tarde_respondente7.net')
savenetwork(TQ43R8,  'pescarte_questao43_tarde_respondente8.net')
savenetwork(TQ43R9,  'pescarte_questao43_tarde_respondente9.net')
savenetwork(TQ43R10, 'pescarte_questao43_tarde_respondente10.net')
savenetwork(TQ43R11, 'pescarte_questao43_tarde_respondente11.net')

savenetwork(TQ44R1,  'pescarte_questao44_tarde_respondente1.net')
savenetwork(TQ44R2,  'pescarte_questao44_tarde_respondente2.net')
savenetwork(TQ44R3,  'pescarte_questao44_tarde_respondente3.net')
savenetwork(TQ44R4,  'pescarte_questao44_tarde_respondente4.net')
savenetwork(TQ44R5,  'pescarte_questao44_tarde_respondente5.net')
savenetwork(TQ44R6,  'pescarte_questao44_tarde_respondente6.net')
savenetwork(TQ44R7,  'pescarte_questao44_tarde_respondente7.net')
savenetwork(TQ44R8,  'pescarte_questao44_tarde_respondente8.net')
savenetwork(TQ44R9,  'pescarte_questao44_tarde_respondente9.net')
savenetwork(TQ44R10, 'pescarte_questao44_tarde_respondente10.net')
savenetwork(TQ44R11, 'pescarte_questao44_tarde_respondente11.net')

savenetwork(TQ45R1,  'pescarte_questao45_tarde_respondente1.net')
savenetwork(TQ45R2,  'pescarte_questao45_tarde_respondente2.net')
savenetwork(TQ45R3,  'pescarte_questao45_tarde_respondente3.net')
savenetwork(TQ45R4,  'pescarte_questao45_tarde_respondente4.net')
savenetwork(TQ45R5,  'pescarte_questao45_tarde_respondente5.net')
savenetwork(TQ45R6,  'pescarte_questao45_tarde_respondente6.net')
savenetwork(TQ45R7,  'pescarte_questao45_tarde_respondente7.net')
savenetwork(TQ45R8,  'pescarte_questao45_tarde_respondente8.net')
savenetwork(TQ45R9,  'pescarte_questao45_tarde_respondente9.net')
savenetwork(TQ45R10, 'pescarte_questao45_tarde_respondente10.net')
savenetwork(TQ45R11, 'pescarte_questao45_tarde_respondente11.net')


################################################
#### Calcula o índice geral de sobreposição
################################################

# Método 1 - Soma dos laços sobre a quantidade total de laços percebidos
g1r1 =  graph_from_adjacency_matrix(Q1R1, mode = 'undirected')
g1r2 =  graph_from_adjacency_matrix(Q1R2, mode = 'undirected')
g1r3 =  graph_from_adjacency_matrix(Q1R3, mode = 'undirected')
g1r4 =  graph_from_adjacency_matrix(Q1R4, mode = 'undirected')
g1r5 =  graph_from_adjacency_matrix(Q1R5, mode = 'undirected')
g1r6 =  graph_from_adjacency_matrix(Q1R6, mode = 'undirected')
g1r7 =  graph_from_adjacency_matrix(Q1R7, mode = 'undirected')
g1r8 =  graph_from_adjacency_matrix(Q1R8, mode = 'undirected')
g1r9 =  graph_from_adjacency_matrix(Q1R9, mode = 'undirected')
g1r10 = graph_from_adjacency_matrix(Q1R10, mode = 'undirected')
g1r11 = graph_from_adjacency_matrix(Q1R11, mode = 'undirected')
g1r12 = graph_from_adjacency_matrix(Q1R12, mode = 'undirected')

lista_manha_q1 = list(as.matrix(get.adjacency(g1r1)),
                      as.matrix(get.adjacency(g1r2)),
                      as.matrix(get.adjacency(g1r3)),
                      as.matrix(get.adjacency(g1r4)),
                      as.matrix(get.adjacency(g1r5)),
                      as.matrix(get.adjacency(g1r6)),
                      as.matrix(get.adjacency(g1r7)),
                      as.matrix(get.adjacency(g1r8)),
                      as.matrix(get.adjacency(g1r9)),
                      as.matrix(get.adjacency(g1r10)),
                      as.matrix(get.adjacency(g1r11)),
                      as.matrix(get.adjacency(g1r12))
)

Q1_total = as.matrix(get.adjacency(g1r1))+
           as.matrix(get.adjacency(g1r2))+
           as.matrix(get.adjacency(g1r3))+
           as.matrix(get.adjacency(g1r4))+
           as.matrix(get.adjacency(g1r5))+
           as.matrix(get.adjacency(g1r6))+
           as.matrix(get.adjacency(g1r7))+
           as.matrix(get.adjacency(g1r8))+
           as.matrix(get.adjacency(g1r9))+
           as.matrix(get.adjacency(g1r10))+
           as.matrix(get.adjacency(g1r11))+
           as.matrix(get.adjacency(g1r12))

lacos = sapply(lista_manha_q1, sum)
total_de_lacos = sum(lacos)

lacos_sobrepostos = Q1_total[Q1_total > 1]
indice_sobreposicao = sum(lacos_sobrepostos) / total_de_lacos


# Método 2 - pela densidade
g1_agregada = graph_from_adjacency_matrix(Q1_total, mode = 'undirected', weighted = T)
edge_density(g1_agregada)
#mean(lacos_sobrepostos) / (nrow(Q1_total)-1)



