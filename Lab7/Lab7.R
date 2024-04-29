#Q1
?Binomial
dbinom(40,44,0.92)
pbinom(35,44,0.92)
pbinom(37,44,0.92, lower.tail = FALSE)
1-pbinom(37,44,0.92)
pbinom(42,44,0.92) - pbinom(39,44,0.92)

#Q2
?Poisson
dpois(6,4.5)
ppois(6,4.5, lower.tail = FALSE)
1-ppois(6,4.5)

#Q3
?Exponential
pexp(3,rate = 1/2)
pexp(4,rate = 1/2, lower.tail = FALSE)
1-pexp(4,rate = 1/2)
pexp(4,rate = 1/2) - pexp(2, rate = 1/2)

#Q4

?Normal
pnorm(37.9, mean = 36.8, sd = 0.4, lower.tail = FALSE)
pnorm(36.9, mean = 36.8, sd = 0.4) - pnorm(36.4, mean = 36.8, sd = 0.4)
qnorm(0.012, mean = 36.8, sd = 0.4)
qnorm(0.01, mean = 36.8, sd = 0.4, lower.tail = FALSE)



