library(readxl)
library(data.table)

capimlimao <- data.table(read_excel("dataset/mca-dados-ec50.xlsx", "capim-limao"))
anis <- data.table(read_excel("dataset/mca-dados-ec50.xlsx", "anis"))

capimlimao.controle <- 186
anis.controle <- 186.5

capimlimao$IV <- capimlimao[, .(IV = (capimlimao.controle - plaques)/capimlimao.controle)]
capimlimao$`INIBIÇÃO VIRAL(%)`

anis$IV <- anis[, .(IV = (anis.controle - plaques)/anis.controle)]
anis$`INIBIÇÃO VIRAL(%)`

