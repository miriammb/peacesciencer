library(tidyverse)
library(peacesciencer)

create_leaderyears(standardize = "cow", subset_years=c(1875:2010)) %>%
  add_gml_mids() %>%
  add_spells() %>%
  add_lead() %>%
  mutate(milservice_nocombat = ifelse(milservice == 1 & combat == 0, 1, 0)) %>%
  add_nmc() %>%
  add_democracy() -> Data


library(fixest)


broom::tidy(M1 <- feglm(gmlmidonset_init ~ gender + leaderage + yrinoffice + milservice_nocombat + combat + rebel +
                  warwin + warloss + rebelwin + rebelloss + xm_qudsest + cinc +
                  I(gmlmidinitspell) + I(gmlmidinitspell^2) + I(gmlmidinitspell^3), data = Data,
                  vcov = "hetero"))

modelsummary::modelsummary(M1, stars=TRUE)
