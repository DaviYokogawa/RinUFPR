#data
milsa <- read.csv2("http://www.leg.ufpr.br/~fernandomayer/data/milsa.csv", sep = ",")

milsa$Inst <- factor(milsa$Inst, ordered = TRUE)
sum(milsa$Inst == "1o Grau")
sum(milsa$Inst == "2o Grau")
sum(milsa$Inst == "Superior")

milsa$Idade <- NA
milsa$Idade <- (milsa$Anos+milsa$Meses/12)

est.civil.tb <- table(milsa$Est.civil)
prop.table(est.civil.tb)

#plotagem de gráfico

par(mfrow = c(1,2))
barplot(est.civil.tb)
pie(est.civil.tb)
names(est.civil.tb)[which.max(est.civil.tb)] #Moda
par(mfrow = c(1,1))

inst.tb <- table(milsa$Inst)
prop.table(inst.tb)
levels(milsa$Inst)[median(as.numeric(milsa$Inst))]
barplot(inst.tb)

filhos.tb <- table(milsa$Filhos)
prop.table(filhos.tb)
cumsum(filhos.tb)
plot(filhos.tb)

milsa$Salario <- as.numeric(levels(milsa$Salario))[milsa$Salario] #Transformando Factor to Numeric
range(milsa$Salario)
quantile(milsa$Salario)
salario.cut <- cut(milsa$Salario, breaks = quantile(milsa$Salario), include.lowest = TRUE)
par(mfrow = 1,1)
inst.salario <- plot(milsa$Inst, milsa$Salario)
inst.salario <- boxplot(milsa$Inst, salario.cut)
