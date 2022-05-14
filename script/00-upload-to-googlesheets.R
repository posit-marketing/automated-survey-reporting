# Uploading to Googlesheets
# We reduced the size of the dataset
# for the blog post.

# Libraries ---------------------------------------------------------------

library(tidyverse)
library(googlesheets4)

# Data --------------------------------------------------------------------

dat <-
  read_csv(here::here("data", "raw", "ntia-analyze-table-FINAL21.csv")) %>% 
  select(dataset:age65pCountSE, -contains("PropSE"), -contains("CountSE"))

gs4_create("automated-survey-data-gs-example",
           sheets = dat)
