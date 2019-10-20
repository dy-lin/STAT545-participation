library(gapminder)
library(tidyverse)
library(here) # If here is loaded BEFORE tidyverse, here just be called using here::here()

(gap_asia_2007 <- gapminder %>% 
        filter(year == 2007, 
               continent == "Asia"))

# Write using absolute path
write_csv(gap_asia_2007,"~/STAT545-participation/cm011/exported_file.csv")

# Write using here package
write_csv(gap_asia_2007,here("cm011", "exported_file.csv"))

# read using here
read_csv(here("cm011", "exported_file.csv"))


url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"

# Read CSV using URL directly
read_csv(url)

# package for reading EXCEL
library("readxl") 

# download.file from baseR, use URL directly to download to specified path
xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(xls_url,here("cm011","some_file.xls"))

# use basename to get filename without directory
file_name <- basename(xls_url)
download.file(xls_url,here("cm011",file_name))

# use read_excel to read excel (like read_csv)
read_excel(here("cm011",file_name))

# read specific range of excel file
mri_file = here("cm011","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:K12")

mri_file = here("cm011","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:L12")

# Remove the "weighted averages" column:
mri <- mri[,-10]

# make tibble longer 
(mri <- mri %>% 
        pivot_longer(cols = `Slice 1`:`Slice 8`,
                      names_to = 'slice_no',
                      values_to = 'value'))




