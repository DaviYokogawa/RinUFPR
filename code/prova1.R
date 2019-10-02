#         PROVA1

####### Questao 1 
x <- (log10(exp(1))+ sqrt(2))/3
x
x1 <- (sqrt(167)-log2(2.1))/factorial(3.5)
x1

####### Questao 2 
individuos <- c(1,2,3,4,5,6,7,8,9,10)
hrs.de.sono <- c(17,12,14,13,16,15,17,13,14,12)
sexo <- c("m", "f", "f", "m", "f", "f", "m", "f", "m", "f")
idade <- c("I","J","A","J","A","I","A","J","I","A")

Felis.catus <- cbind.data.frame(individuos, hrs.de.sono, sexo, idade)
Felis.catus
fr <- (sum((sexo == "f"), na.rm = FALSE))/length(sexo)
fr
sonomenor <- sum((hrs.de.sono <= 14), na.rm = FALSE)/10
sonomenor
gatosvelhos <- sum((idade == "I"), na.rm = FALSE)/10
gatosvelhos              
sonomaior <- sum((hrs.de.sono > 13), na.rm = FALSE)/10
sonomaior
medianahrs.de.sono <- median(hrs.de.sono, na.rm = FALSE)
medianahrs.de.sono
