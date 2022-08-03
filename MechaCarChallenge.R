#Module 15 Challenge

##Deliverable 1

library(dplyr)
library(ggplot2)

MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 
  #Generate Multiple Linear Regression Model
regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar) 
summary(regression)
regression

yvals <- regression$coefficients['vehicle_weight']*MechaCar$vehicle_weight +
  regression$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar,aes(x='vehicle_weight',y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model



##Deliverable 2
library(tidyverse)
suspension_coils <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- suspension_coils  %>% summarize(Mean=mean(PSI), Median= median(PSI), Variance=var(PSI), SD = sd(PSI)) #create summary table with multiple columns  
total_summary
lot_summary <- suspension_coils  %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median= median(PSI), Variance=var(PSI), SD = sd(PSI)) #create summary table with multiple columns  
lot_summary
