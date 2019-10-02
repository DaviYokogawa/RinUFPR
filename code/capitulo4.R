library(MASS)

fn.ex <- function() {
  cat("quantos anos voce tem?")
  anos <- readLines(n = 1)
  if (anos < 0)
    cat("Idade Invalida")
  else  if (anos >= 18)
    cat("Maior de Idade")
  else cat("Menor de Idade")
  return(invisible())
}

arq1 <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/prb0519.dat")
arq2 <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/tab0303.dat")
arq3 <- read.table("http://leg.ufpr.br/~fernandomayer/data/BHH2/tab1208.dat")
arq4 <- read.table(pipe("pbpaste"), header=TRUE)
arq5 <- read.table("montgomery_6-26.csv", header = TRUE,
                   sep = ",", dec = ".")
arq6 <- read.table(pipe("pbpaste"), header = TRUE)
arq7 <- read.table(pipe("pbpaste"),sep = ",", header = TRUE)
arq8 <- read.table("ipea_habitacao.csv", sep = ",", dec = ".",
                   header = TRUE)
arq9 <- read.csv2("stratford.csv",sep = "\t", header = TRUE)
arq9

numeros <- scan()
pessoas <- scan(what = " ", sep = ",")
bolleans <- scan(what = logical())

data(mtcars)
str(mtcars)
data("topo")
write.csv2(mtcars, file = "/Users/daviyokogawa/RinUFPR/mtcars.csv")

arq10 <- read.table("pesquisafumo.csv",sep = ",", header = TRUE)
arq10$pessoas.elev.2 <- (arq10$Masculino+arq10$Feminino)^2
write.csv2(arq10, sep = ";", file = "/Users/daviyokogawa/RinUFPR/pesquisafumo.csv")

arq11 <- data.frame(Condiçao = c(rep("Fumante",5), rep(" Não Fumante", 5)),
                    Masculino = c(49,64,37,52,68,27,58,52,41,30),
                    Feminino = c(54,61,79,64,29,40,39,44,34,44))

