library(tidyverse)
library(here)

gapminder_csv <- read_csv(here::here("STAT545-participation", "cm011", "gapminder_sum.csv"))

View(gapminder_csv)

ls()
remove(list=ls()) # Only removes variables, does not detach packages
ls()

# To actually Restart R is: Session > Restart R

ls()

gapminder_csv <- read_csv(here::here("STAT545-participation", "cm011", "gapminder_sum.csv"))

## read Excel file

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

download.file(url = data_url,
           destfile = here::here("STAT545-participation", "cm011", "GreatestGivers.xls"))

file_name <- basename(data_url)

library(readxl)

philanthropists <- read_excel(here(file_name), trim_ws = TRUE)






