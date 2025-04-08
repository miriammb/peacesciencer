library(tidyverse)
library(states)
# For clarity: downloaded this file on 12-12-2020.
# Did a simple find and replace of ":" for "-"
# added column names in what amounts to a tsv.
gw_states <- states::gwstates
gw_states$microstate <- NULL
names(gw_states) <- c("gwcode",    "stateabb",  "statename", "startdate", "enddate" )

gw_states %>%
  mutate(startdate = str_replace(startdate, "9999", "2017"),
         enddate = str_replace(enddate, "9999", "2017")) %>% 
  mutate(startdate = lubridate::ymd(startdate),
         enddate = lubridate::ymd(enddate)) -> gw_states

# Okay, what's not ASCII...

gw_states %>% mutate_if(is.character,
                        list(enc = ~stringi::stri_enc_isascii(.))) %>%
  filter(stateabb_enc == FALSE | statename_enc == FALSE)

# ^ ugh, you two...
# Okay, fine, I'll fix this.

gw_states %>%
  mutate(statename = case_when(
    gwcode == 271 ~ "Wuerttemberg",
    gwcode == 437 ~ "Cote D'Ivoire",
    TRUE ~ statename
  )) -> gw_states

save(gw_states, file="data/gw_states.rda")
