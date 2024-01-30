#Evidencia 2 | Proyecto integrador

getwd()
setwd("C:/Users/maria/Documents")

library(gridExtra)
library(viridis)
library(Biostrings)
library(DECIPHER)
library(ade4)
library(seqinr)
library(adegenet)
library(ape)
library(ggtree)
library(ggplot2)
library(XVector)

#1
#Secuencia de 10 genomas virales incluyendo SASRS-COV-2 con GenBank


variantes <- c("NC_045512", "KX034100", "MN996532", "AY278741", 
                  "MT327745", "MT230904", "MT192765", "OL559206", 
                  "MZ732617", "MT126808" )
#Recuperacion de los datos en secuencia GenBank
sec_var <- read.GenBank(variantes)

#Conversión de formato GenBank a formato fasta
write.dna(sec_var, file = "Secuencia_variantes.fasta", format = "fasta")
variantes_na <- readDNAStringSet("Secuencia_variantes.fasta")
variantes_na

#2
#Alineamiento de variantes mediante navegador

#Orientacion de los nucleótidos
variantes_na <- OrientNucleotides(variantes_na)

#Alineamiento de la secuencia de los genomas virales
variantes_sa <- AlignSeqs(variantes_na)
#Visualizacion mediante navegador
BrowseSeqs(variantes_sa)

#3
#Agrega una interpretación escrita, desde el punto de vista biológico, para esta gráfica (de 6 a 12 renglones).

#4
#Matriz y tabla en escala de grises 

#Guardar el resultado de alineamiento en formato .fasta
writeXStringSet(variantes_sa, file = "Sec_variantes_alineadas.fasta")
#Cargar archivo .fasta 
var_alineada <- read.alignment("Sec_variantes_alineadas.fasta", format = "fasta")
#Crear matriz 
matriz <- dist.alignment(var_alineada, matrix = "similarity")
matriz
as.data.frame(as.matrix(matriz))
#Escala de grises
esc_gris <-as.data.frame(as.matrix(matriz))
table.paint(esc_gris, cleg = 0, clabel.row = .5, clabel.col = .5)

#5
#Agrega una interpretación escrita, desde el punto de vista biológico, para esta gráfica (de 6 a 12 renglones).

#6
#Construye un árbol filogenético a partir de la matriz de distancia
arbol_var <- nj(matriz)
arbol_var <- ladderize(arbol_var)

plot(arbol_var, main = "Árbol Filogenético de Variantes SARS-COV2")

