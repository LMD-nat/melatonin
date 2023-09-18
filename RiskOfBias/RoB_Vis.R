# ROB tool for melatonin meta-analysis
# install.packages("robvis")
library(devtools)
devtools::install_github("mcguinlu/robvis")
library(robvis)
library(dplyr)

# import RoB data from Covidence
library(readr)
RoB <- read_excel("RoB.csv")

# summary plot
rob_summary(data = RoB, tool = "ROB2")

# traffic light plot
RoB_traffic <- RoB %>% select(-c(Weight))
rob_traffic_light(data = RoB_traffic, tool = "ROB2", psize = 5)

