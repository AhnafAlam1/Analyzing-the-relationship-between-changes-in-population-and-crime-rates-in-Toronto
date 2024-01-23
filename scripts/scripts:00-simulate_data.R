#### Preamble ####
# Purpose: Simulating neighbourhood crime statistics for Toronto
# Author: Ahnaf Alam
# Date: Jan 22, 2024
# Contact: ahnaf.alam@mail.utoronto.ca



#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Simulate data ####

set.seed(888)

total <- 5

### Note: The simulation assumes there are only 5 neighbourhoods, however, in reality,
#### there are over hundreds of distinct neighbourhoods in Toronto

neighborhoods <- c("North Toronto", "Avondale", "Yonge-Doris", "Guildwood", "West Rouge")

crime_rates_sim <- 
  tibble(
    Neighbourhood = neighborhoods,
    Population = sample(1000:100000, total, replace = TRUE),
    Shooting = sample(1:1000, total, replace = TRUE),
    Shooting_Rate = sample(0:100, total, replace = TRUE),
    Assault = sample(1:1000, total, replace = TRUE),
    Assault_Rate = sample(0:100, total, replace = TRUE)
  )

print(crime_rates_sim)

#### Running tests ####

#1: Checking to see if all the intended neighbourhoods are in the table or not

crime_rates_sim$Neighbourhood|>
  unique() == c("North Toronto", "Avondale", "Yonge-Doris", "Guildwood", "West Rouge")

#2: Checking to see if the minimum population for any one neighbourhood is more than 1000.

crime_rates_sim$Population |>
  min() > 1000

#3: Checking to see if all the numbers are integer or not

crime_rates_sim$Crime |>
  class() == "integer"

#4: Checking to see if there are total unique neighbourhoods or not

crime_rates_sim$Neighbourhood |>
  unique() |>
  length() == 5



