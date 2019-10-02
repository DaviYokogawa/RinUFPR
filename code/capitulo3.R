##########Chapter3
#Selecao condicional em dados
dados <- data.frame( ano= c(2001,2002, 2003, 2004, 2005),
                     captura= c(26,18,25,32,NA),
                     porto= c("SP","RS","SC","SC","RN"))

dados[dados$ano == 2004, ]
dados[dados$porto == "SC", ]
dados[dados$captura == 26, ]
dados[!is.na(dados$captura), ]
subset(dados, captura > 0)
##### Exercises1

vet <- c( 88, 5, 12 ,13)
vet[3]
vet[1]
vet[c(4, 2)]
vet[-c(1, 4)]
vet1 <- c(vet[1:3], 168, vet[4])

#####Exercises2

matriz <- matrix(c(4,10,9,2,16,5,9,0,2,11,5,NA), nrow = 4)
matriz[4,2]
matriz[-3,-2]
lista <- list(vetor1 = 1:10,vetor2 =  letters[1:10],matriz = matriz)
#function letter had 26 index values, with letters
lista$matriz
lista$vetor1
lista$vetor2
lista$A <- c(1:5)
lista$B <- letters[1:6]

lista[["vetor1"]][5:3]
lista[["vetor1"]][-c(2,6)]
lista$matriz[,3]
lista$normal <- rnorm(1:30, 12, 4) #add new index inside a list
lista$A[4]
lista$B[3]

df <- data.frame(letras = LETTERS[1:10], aleatorio= c(runif(7,1,5),NA, NA, NA ))
#all columns in a Data Frame, need the same numbers of rows, else add NA's
df[c(1,2),] #to see two rows at same time
df[c(9,10),]
df[6,1]
df[4,2]
sum(is.na(df$aleatorio), na.rm = TRUE) #counting NA's inside Data Frame
df <- na.omit(df) #omiting missing values
df$nova.coluna <- sample(1:10, 7) #add new column inside Data Frame
df$LISTA.A <- c(lista$A, NA, NA)
df$LISTA.B <- c(lista$B, NA)
#####Exercises3

x <- c(3,8,10,4,9,7,1,9,2,4) 
which(x >= 5)
which(x < 4)
which(x > 4 & x < 8)

a <- LETTERS[1:10]
which(a == "F") #say the index of a == "F"
x[a == "F"] #say the value of the index in x when a == "F"
x[a %in% c("B","D","H")] #say multiples values of the index x when a == c("B", "D", "H")
a[x == 10]
a[x >= 8 & x <= 10]
x[a %in% c("A", "B", "D")]
#####Exercises4

pop.carang <- data.frame(num.carangueijos= c(42,34,59,18),
                         praia= c("Joaquina", "Campeche", "Armacao", "Praia Mole"))
pop.carang[pop.carang$num.carangueijos < 30, ]
pop.carang$regiao <- c("Leste", "Sul", "Sul", "Leste")
pop.carang[pop.carang$regiao == "Leste" & pop.carang$num.carangueijos < 20, ]
pop.carang[pop.carang$regiao == "Sul" & pop.carang$num.carangueijos > 40, ]
pop.carang[pop.carang$num.carangueijos > 50, ]
