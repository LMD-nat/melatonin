# ROB tool for melatonin meta-analysis
# install.packages("robvis")
library(devtools)
# devtools::install_github("mcguinlu/robvis")
library(robvis)
library(dplyr)
library(readr)

# get data
urlfile = "https://raw.githubusercontent.com/LMD-nat/melatonin/main/RiskOfBias/RoB.csv"
RoB <- read_csv(url(urlfile))

# summary plot
rob_summary(data = RoB, tool = "ROB2")

# traffic light plot
RoB_traffic <- RoB %>% select(-c(Weight))
rob_traffic_light(data = RoB_traffic, tool = "ROB2", psize = 5)

