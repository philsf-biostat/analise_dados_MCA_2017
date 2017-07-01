source("scripts/input.R")

cl.mod <- lm(IV*100 ~ concentracao, data = capimlimao)
an.mod <- lm(IV*100 ~ concentracao, data = anis)


corte <- function(modelo, corte = 50) {
  (50 - coef(modelo)[1])/coef(modelo)[2]
}
corte(cl.mod)
corte(an.mod)
