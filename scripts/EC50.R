source("scripts/input.R")

cl.mod <- lm(IV*100 ~ concentracao, data = capimlimao)
an.mod <- lm(IV*100 ~ concentracao, data = anis)


corte <- function(modelo, corte = 50) {
  (50 - coef(modelo)[1])/coef(modelo)[2]
}
corte(cl.mod)
corte(an.mod)

cl +
  geom_hline(yintercept = 50, col = "red") +
  geom_vline(xintercept = corte(cl.mod), linetype = "dashed")
ggsave("figuras/cl-corte.png")
an +
  geom_hline(yintercept = 50, col = "red") +
  geom_vline(xintercept = corte(an.mod), linetype = "dashed")
ggsave("figuras/an-corte.png")
