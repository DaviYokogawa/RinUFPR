f1 <- function(x){
  fx <- ifelse(x < 0, 0, 2 * exp(-2 * x))
  return(fx)
}

par(mfrow = c(2, 2))
plot(f1)
plot(f1, from = 0, to = 5)
plot(f1, from = 0, to = 10)
plot(f1, from = 0, to = 2)
par(mfrow = c(1, 1))

integrate(f1, lower = 0, upper = Inf)
integrate(f1, lower = 0.2, upper = 0.8)

plot(f1, from = 0, to = 5)
polygon(x = c(1, seq(1, 5, length.out = 200)),
        y = c(0, f1(seq(1, 5,length.out = 200))),
        density = 10)
polygon(x = c(0.2, seq(0.2, 0.8, length.out = 20), 0.8),
        y = c(0, f1(seq(0.2, 0.8, length.out = 20)), 0),
        col = "gray")
text(x = c(1.2, 0.5), y = c(0.1, 0.2),
     c(expression(p[b], p[c])))


# Calcular a probabilidade de que sejam vendidos mais que 150 kg.
# Calcular a venda esperada em 30 dias.

f2 <- function(x){
  fx <- numeric(length(x))
  fx[0 <= x & x < 1] <- (2/3) * x[0 <= x & x < 1]
  fx[1 <= x & x < 3] <- (-1/3) * x[1 <= x & x < 3] + 1
  fx[x < 0] <- 0
  fx[x >= 3] <- 0
  
  return(fx)
}

integrate(f2, 0, 3) # Verificando que a integral vale 1 

integrate(f2, 1.5, 3)
plot(f2, -1, 4) # Grafico da funcao
polygon(x = c(1.5,1.5, 3), y = c(0, f2(1.5), 0), dens = 10)

# ESPERANCA[X]: ∫x*f(x) dx

espf2 <- function(x){
  x * f2(x)
}
integral.espf2 <- integrate(espf2, 0, 3)

30 * integral.espf2$value

'''
EXEMPLO

Mostre que f(x) é uma f.d.p.

Qual a renda média nesta localidade?

Calcule a probabilidade de encontrar uma pessoa com renda 
acima de 4.5 u.m. e indique o resultado no gráfico da distribuição.
'''

f3 <- function(x){
  fx <- numeric(length(x))
  fx[0 <= x & x <= 2] <- (1/10)*x[0 <= x & x <= 2] + (1/10)
  fx[2 < x & x <= 6] <- (-3/40)*x[2 < x & x <= 6] + (9/20)
  fx[x < 0 & x > 0] <- 0
  
  return(fx)
}

# Mostre que f(x) 'e uma f.d.p
integrate(f3, 0, 6)

# Qual a renda media nesta localidade?
espf3 <- function(x){
  x*f3(x)
}
integrate(espf3, 0, 6)

plot(f3, -1, 7)

polygon(x = c(4.5, 4.5, 6), y = c(0, f3(4.5), 0), dens = 10)

"""
Nos exercícios abaixo iremos também usar o R como 
uma calculadora estatística para resolver alguns exemplos/exercícios
de probabilidade tipicamente apresentados em um curso de estatística básica.

X~N(90,100)

"""
#a
pnorm(115, 90, 10)
#b
pnorm(80, 90, 10, lower.tail = FALSE)
#c
pnorm(75, 90,10)
#d
pnorm(110, 90, 10) - pnorm(85, 90, 10)

"""
Sendo X uma variável seguindo o modelo Binomial com parâmetros n = 15
e p = 0.4
"""
#a
pbinom(14, 15, 0.4, lower.tail = FALSE)
#b
pbinom(10,15, 0.4) - pbinom(8, 15, 0.4)

"""
Uma empresa informa que 30% de suas contas a receber
de outras empresas encontram-se vencidas.
Se o contador da empresa seleciona aleatoriamente 5 contas, 
determine a probabilidade de:
a) Nenhuma conta estar vencida
b) Exatamente duas contas estarem vencidas
c) Três ou mais contas estarem vencidas
"""
#a
dbinom(0, 5, 0.3)
#b
dbinom(2, 5, 0.3)
#c
pbinom(3, 5, 0.3, lower.tail = FALSE)

"""
Uma empresa recebe 720 emails em um intervalo de 8 horas.
Qual a probabilidade de que:
a) Em 6 minutos receba pelo menos 3 emails?
b) Em 4 minutos não receba nenhum email?
"""
lambda <- 720/(8*60)
#a
ta <- 6
mua <- lambda*ta
ppois(3, mua, lower.tail = FALSE)
#b
tb <- 4
mub <- lambda*tb
dpois(0, mub)

"""
O processo de empacotamento de uma fábrica de cereais
foi ajustado de maneira que uma média de u = 13.0kg de cereal
seja colocado em cada caixa. Sabe-se que existe uma pequena
variabilidade no enchimento dos pacotes devido à fatores aleatórios,
e que o desvio-padrão do peso de enchimento é de sd = 0.1 kg.
Assume-se que a distribuição dos pesos tem distribuição normal.
Com isso, determine as probabilidades de que uma caixa escolhida ao acaso:

X~N(13, 0.1)
a) Pese entre 13,0 e 13,2 kg.
b) Tenha um peso maior do que 13,25 kg.
c) Pese entre 12,8 e 13,1 kg.
d) Pese entre 13,1 e 13,2 kg.
"""
#a
pnorm(13.2, 13, 0.1) - pnorm(13, 13, 0.1)
#b
pnorm(13.25, 13, 0.1, lower.tail = FALSE)
#c
pnorm(13.1, 13, 0.1) - pnorm(12.8, 13, 0.1)
#d
pnorm(13.2, 13, 0.1) - pnorm(13.1, 13, 0.1)

"""
Faça os seguintes gráficos:
a) Da função de densidade de uma variável com distribuição de Poisson
com parâmetro lambda = 5 
b) Da densidade de uma variavel X~N(90,100)
c) Sobreponha ao grafico anterior a densidade de uma variavel Y~N(90,80)
e outra Z~N(85,90)
d) Densidades de distribuicoes X^2 com 1,2 e 5 graus de liberdade
"""
#a
plot(0:20, dpois(x = 0:20, lambda = 5), type = "h",
     xlab = "X", ylab = "P[X = x]", main = expression(mu == 5),
     ylim = c(0,.4))
#b
plot(dnorm(0:200,90,10), type = "l",
     xlab = "Valores de X",
     ylab = "Densidade de probabilidade")
title("Distribuicão Normal\nX ~ N(90, 100)")

#c
par(mfrow = c(1,2))
plot(dnorm(50:150,90,80^(1/2)), type = "l",
     xlab = "Valores de Y",
     ylab = "Densidade de probabilidade")
title("Distribuicão Normal\nY ~ N(90, 80)")

plot(dnorm(50:150,85,90^(1/2)), type = "l",
     xlab = "Valores de Z",
     ylab = "Densidade de probabilidade")
title("Distribuicão Normal\nZ ~ N(85, 90)")
par(mfrow = c(1,1))

#densidades de distribuições  χ^2 com 1, 2 e 5 graus de liberdade.
plot(function(x) dchisq(x, df = 1), 0, 8)
plot(function(x) dchisq(x, df = 2), 0, 8)
plot(function(x) dchisq(x, df = 5), 0, 8)

f4 <- function(x){
  fx <- numeric(length(x))
  fx[x > 1 & x < 2] <- -2 + 2*x[x > 1 & x < 2]
  fx[x < 1 & x > 2] <- 0
  return(fx)
}
integrate(f4, 1,2)

espf4 <- function(x){
  x*f4(x)
}

integrate(espf4, 1,2)

plot(f4, 0, 3)
















