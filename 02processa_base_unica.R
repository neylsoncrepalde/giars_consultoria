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
library(reshape2)
library(magrittr)

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
    completo = paste(dados[row,col])
    indicacoes = c(indicacoes, completo)
  }
}

tabela = freq(indicacoes, plot = F)
tabela = as.matrix(tabela)
tabela
#View(tabela)
## Não funcionou

# Printando a tabela por comunidade
freq(dados$comunidade, plot=F)
comunidades = as.factor(dados$comunidade)
comunidades = levels(comunidades)

for (com in comunidades) {
  print(freq(indicacoes[dados$comunidade == com]), plot=F)
}

# Produzir uma rede para cada comunidade....

############################################
# Rastrear os nomes nas matrizes em respondentes e parentes...

############################################

#########################################################
# Montando apenas com o nome

el = dados %>% select(MUNICIPIO, Comunidade, `Respondente Principal`, rodadas)
el = melt(el, id.vars = c('MUNICIPIO','Comunidade','Respondente Principal'))
el = el %>% filter(!is.na(value)) %>% filter(!is.na(`Respondente Principal`))

el %>% arrange(`Respondente Principal`) %>% View
mat = el %>% select(`Respondente Principal`, value) %>% as.matrix
which(is.na(mat) == T)

g = graph_from_edgelist(mat, directed = T)

####################
g
plot(g, vertex.size = 5, vertex.label=NA, edge.arrow.size=.2)

# Extraindo o componente principal
clu = components(g, "weak")
V(g)$cluster = clu$membership

strong = induced_subgraph(g, V(g)[V(g)$cluster == 1])
strong
plot(strong, vertex.size = 5, vertex.label=NA, edge.arrow.size=.2)


