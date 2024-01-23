#### Preamble ####
# Purpose: Downloads and saves the data from Opendatatoronto
# Author: Ahnaf Alam
# Date: Jan 22, 2024
# Contact: ahnaf.alam@mail.utoronto.ca



#### Workspace setup ####


install.packages("tidyverse")
install.packages("janitor")

library(opendatatoronto)
library(tidyverse)
library(janitor)
library(knitr)

#### Download data ####

crime_data <- 
  list_package_resources("neighbourhood-crime-rates") |>
  filter(name == "neighbourhood-crime-rates - 4326.csv") |>
  get_resource()


print(crime_data)


#### Save data ####

write_csv(
  x = crime_data,
  file = "inputs/data/crime_data.csv")
