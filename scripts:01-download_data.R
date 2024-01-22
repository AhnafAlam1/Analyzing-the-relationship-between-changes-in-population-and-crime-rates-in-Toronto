#### Preamble ####
# Purpose: Downloads and saves the data from Opendatatoronto
# Author: Ahnaf Alam
# Date: Jan 15, 2024
# Contact: ahnaf.alam@mail.utoronto.ca
# Pre-requisites: -



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
  file = "crime_data.csv")
