library(gapminder)
library(tidyverse)
library(here)

(gap_asia_2007 <- gapminder %>% filter(year == 2007, continent == "Asia"))

write_csv(gap_asia_2007,"~/STAT545-participation/cm011/exported_file.csv")


write_csv(gap_asia_2007,here::here("cm011", "exported_file.csv"))

read_csv(here::here("cm011", "exported_file.csv"))

url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"

read_csv(url)

library("readxl") 

xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(xls_url,here::here("cm011","some_file.xls"))

file_name <- basename(xls_url)
download.file(xls_url,here::here("cm011",file_name))

read_excel(here::here("cm011",file_name))

mri_file = here::here("cm011","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:K12")

mri_file = here::here("cm011","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:L12")

# Remove the "weighted averages" column:
mri <- mri[,-10]

(mri <- mri %>% 
  tidyr::pivot_longer(cols = `Slice 1`:`Slice 8`,
                      names_to = 'slice_no',
                      values_to = 'value'))




