library(ggplot2)
source("scripts/input.R")

cl <- ggplot(capimlimao, aes(concentracao, IV*100)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Capim Limão") +
  xlab("Concentração (µg/ml)") +
  ylab("Inibição viral (%)")

an <- ggplot(anis, aes(concentracao, IV*100)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Anis") +
  xlab("Concentração (µg/ml)") +
  ylab("Inibição viral (%)")

cl
ggsave("figuras/cl.png")
an
ggsave("figuras/an.png")

cl + scale_x_log10()
ggsave("figuras/cl-log.png")
an + scale_x_log10()
ggsave("figuras/an-log.png")
