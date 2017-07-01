library(ggplot2)
source("scripts/input.R")

cl <- ggplot(capimlimao, aes(concentracao, IV)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Capim Limão") +
  xlab("Concentração (µg/ml)") +
  ylab("Inibição viral (%)")

an <- ggplot(anis, aes(concentracao, IV)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Anis") +
  xlab("Concentração (µg/ml)") +
  ylab("Inibição viral (%)")
