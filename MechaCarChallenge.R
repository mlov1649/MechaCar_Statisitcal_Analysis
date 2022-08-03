#Module 15 Challenge
library(dplyr)
library(ggplot2)
library(tidyverse)


##Deliverable 1: Linear Regression to Predict MPG


MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 
  #Generate Multiple Linear Regression Model
regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar) 
summary(regression)
regression

yvals <- regression$coefficients['vehicle_weight']*MechaCar$vehicle_weight +
  regression$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MechaCar,aes(x='vehicle_weight',y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model



##Deliverable 2: Summary Statistics on Suspension Coils
suspension_coils <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- suspension_coils  %>% summarize(Mean=mean(PSI), Median= median(PSI), Variance=var(PSI), SD = sd(PSI)) #create summary table with multiple columns  
total_summary
lot_summary <- suspension_coils  %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median= median(PSI), Variance=var(PSI), SD = sd(PSI)) #create summary table with multiple columns  
lot_summary

##Deliverable 3: T-Tests on Suspension Coils
results <- t.test(suspension_coils$PSI, mu = 1500)  #compare sample versus population means
re1 <- t.test(subset(suspension_coils,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
re2 <- t.test(subset(suspension_coils,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
re3 <- t.test(subset(suspension_coils,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

results
re1[3]
re2[3]
re3[3]



