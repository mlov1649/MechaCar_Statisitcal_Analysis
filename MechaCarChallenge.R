#Module 15 Challenge

##Deliverable 1

library(dplyr)
library(ggplot2)

MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 
  #Generate Multiple Linear Regression Model
regression <- lm(mpg ~ vehicle_weight + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar) 
summary(regression)



