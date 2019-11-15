# Exercícios Probabilidade 

#--------------------------------------------------------------------------------------------------#

?pnorm

pnorm(115,90,10) # P(X≤115)

1 - pnorm(80,90,10) # P(X≥80)

pnorm(75,90,10) # P(X≤75)

pnorm(110,90,10) - pnorm(85,90,10) # P(85≤X≤110)

#--------------------------------------------------------------------------------------------------#

1 - pbinom(14, size = 15, prob = 0.4) # P(X≥14)

pbinom(10,15,0.4) - pbinom(8,15,0.4) # P(8<X≤10)

#--------------------------------------------------------------------------------------------------#

# Prova Marcelo 

#--------------------------------------------------------------------------------------------------#

# Questão 1 (10 e 0.10) 2 casa decimais 

round((dbinom(0,10,0.1)),2) # A probabilidade de nenhum sucesso é 0.35. V 

round((pbinom(10,10,0.1) - pbinom(2,10,0.1)),2) # A probabilidade de ter entre 10 e 2 sucessos é de 0.93. F 

round((pbinom(10,10,0.1) - pbinom(5,10,0.1)),2)

round((pbinom(10,10,0.1) - pbinom(8,10,0.1)),2) # A probabilidade de ter entre 5 e 10 sucessos é igual a probabilidade de ter entre 8 e 10 sucessos. V

round((1 - pbinom(3,10,0.1)),2) # A probabilidade de três ou mais sucessos é de 0.10. F

10 * 0.10 # Número esperado = n * p F

# Variância = n*p*(1-p)

#--------------------------------------------------------------------------------------------------#

# Questão 2 (media = 30 e sd = 8.2) 2 casas decimais 

round((1 - pnorm(40,30,8.2)),2) # A probabilidade de uma empresa ter um preço de no mínimo 40 dólares é de 0.89. F

round((pnorm(49.08,30,8.2)),2) # 95% das empresas custam até 49.08 doláres. F

round((pnorm(15,30,8.2)),2) # A probabilidade de uma empresa ter um preço não superior a 15 dólares é de 0.03. V

round((pnorm(35,30,8.2) - pnorm(25,30,8.2)),2) # A probabilidade de uma empresa ter um preço entre 25 e 35 dólares é de 0.46. V

round((pnorm(40,30,8.2) - pnorm(20,30,8.2)),2) # A probabilidade de uma empresa ter um preço entre 20 e 40 dólares é de 0.62. F

#----------------------------------------------------------------------------------------------------#

# Continuando os da apostila: 

#----------------------------------------------------------------------------------------------------#

# Questão 3 (n=5 e p=0.3)

dbinom(0,5,0.3) # Nenhuma conta estar vencida

dbinom(2,5,0.3) # Exatamente duas contas estarem vencidas

1 - pbinom(3,5,0.3) # Três ou mais contas estarem vencidas

#---------------------------------------------------------------------------------------------------#

# Uma empresa recebe 720 emails em um intervalo de 8 horas. Qual a probabilidade de que: 

?ppois

# Converti horas pra minutos: 8 horas -> 480 minutos 

# lambda = mu / t = 720 / 480 = 1.5 

# mu = lambda * t (desejado) = 1.5 * 6 = 9 

mu <- 1.5 * 6

1 - ppois(3,mu) # Em 6 minutos receba pelo menos 3 emails. 

mi <- 1.5 * 4

dpois(0,mi) # Em 4 minutos não receba nenhum email.

  #-----------------------------------------------------------------------------------------------------#

# mu = 13, sd = 0.1

pnorm(13.2,13,0.1) - pnorm(13,13,0.1) # Pese entre 13,0 e 13,2 kg.

1 - pnorm(13.25,13,0.1) # Tenha um peso maior do que 13,25 kg.

pnorm(13.1,13,0.1) - pnorm(12.8,13,0.1) # Pese entre 12,8 e 13,1 kg.

pnorm(13.2,13,0.1) - pnorm(13.1,13,0.1) # Pese entre 13,1 e 13,2 kg.

#-----------------------------------------------------------------------------------------------------#

# Questão 6 (Fazendo gráficos)

plot(dpois(0:10,5),type='h') # da função de densidade de uma variável com distribuição de Poisson com parâmetro λ=5plot(dnorm(50:130,90,10),type='l') # da densidade de uma variável X∼N(90,100) 

plot(function(x) dnorm(x,90,10),50,130)
# ou
curve(dnorm(x,90,10),50,130)


plot(function(x) dnorm(x, 90,10), 50, 130, add = TRUE) # sobreponha ao gráfico anterior a densidade de uma variável Y∼N(90,80) e outra Z∼N(85,100)
plot(function(x) dnorm(x, 90, sqrt(80)), 50, 130,  ylab = 'f(x)', col = 'red')
plot(function(x) dnorm(x, 85, 10), 50, 130, add = TRUE, col = 'purple')

plot(function(x) dchisq(x, df = 1), 0, 8)
plot(function(x) dchisq(x, df = 2), 0, 8)
plot(function(x) dchisq(x, df = 5), 0, 8)

#-----------------------------------------------------------------------------------------------------#

# f. d. p. lá de cima 

fx <- function(x){
  if(x>=0 & x<=2){
    f <- (1/10)*x + (1/10)
  }
  else if(x>2 & x<=6){
    f <- (-3/40)*x + (9/20)
  }
  else(
    f <- 0
  )
  return(f)
}

Vectorize(fx) -> fx2

integrate(fx2,0,6) # a integral de todo o domínio deu 1

# e a função nunca gera um valor negativo 

integrate(fx2,4.5,Inf) # Calcule a probabilidade de encontrar uma pessoa com renda acima de 4,5 u.m. e indique o resultado no gráfico da distribuição.

plot(function(x) fx2(x), 0, 6)

ex <- function(x){x * fx2(x)} # Qual a renda média nesta localidade?

integrate(ex,0,6) # E[X]=∫xf(x)dx 




