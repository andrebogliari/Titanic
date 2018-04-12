## CARREGAR PACOTES ####

library(tidyverse)
library(ggplot2)

## SELECIONAR BASE DE DADOS ####

data_ttnc <- read.table('titanic.dat.txt')

## INSTRUÇÕES BASE DE DADOS ####

help("Titanic")

Class (0=crew, 1=first, 2 = second, 3 = third)
Age   (1 = adult, 0 = child)
Sex   (1 = male, 0 = female)
Survived (1 = yes, 0 = no)

## SCRIPT - ANÁLISE ####

# Alterando nome das colunas

colnames(data_ttnc)[colnames(data_ttnc)=="V1"] <- "classe"
colnames(data_ttnc)[colnames(data_ttnc)=="V2"] <- "idade"
colnames(data_ttnc)[colnames(data_ttnc)=="V3"] <- "sexo"
colnames(data_ttnc)[colnames(data_ttnc)=="V4"] <- "sobreviveu"

## Filtrando dados

filter(data_ttnc, sobreviveu == 1, sexo == 1)
filter(data_ttnc, sobreviveu == 1, sexo == 0)

# Plotando Gráficos

d <- ggplot(data_ttnc, aes(sobreviveu, sexo))
d + geom_count()



