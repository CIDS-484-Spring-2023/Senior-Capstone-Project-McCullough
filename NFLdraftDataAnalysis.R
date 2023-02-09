#NFL draft data
library(tidyverse)
library(readxl)

draft = read_excel('1993-2022draftStats.xlsx', col_names = TRUE)
draft