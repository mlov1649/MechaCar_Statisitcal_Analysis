# MechaCar_Statisitcal_Analysis


## Linear Regression to Predict MPG
<img width="599" alt="Screen Shot 2022-08-02 at 9 39 41 PM" src="https://user-images.githubusercontent.com/18197449/182505698-f1d2d371-73c0-40cb-9130-db3f297faa01.png">


Observing the P-Values of the independent variables (Vehicle Weight, Vehicle Length, AWD, Spoiler Angle, and Ground Clearance)

1. We find that only 2 are under 0.05 and thus provide a non-random amount of variance to the mpg values in the dataset.
Those coefficients are: Vehicle Length and Vehicle Ground Clearance

2. Given that the p-value is p-value: 5.35e-11, much lower that the standard significance of .05%, we can say that the slope is not 0. 

3. The model doe snot predict the mpg of prototypes affectively. The summary reports an R^2 score of 0.04433.  



## Summary Statistics on Suspension Coils
<img width="990" alt="Screen Shot 2022-08-03 at 3 32 59 PM" src="https://user-images.githubusercontent.com/18197449/182694009-902e14ad-3d35-438f-842a-81c77f72088c.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
The Variance is inconsistant in Lot 3 (170 lbs/sqin). 
However, the variance is very low in Lot 1 and Lot 2 and meets design specification. 
Overall, the variance is 62 which meets the design specifiation.


## T-Tests on Suspension Coils
<img width="769" alt="Screen Shot 2022-08-03 at 3 51 49 PM" src="https://user-images.githubusercontent.com/18197449/182696864-1346efa0-105f-464c-9b98-25a3cb23eb0b.png">

Compared to standard significance level of .05, the p-values of **Lot 1 (1.0)** and **Lot 2 (0.6071669)** are higher. We fail to reject the null hypothesis. 
However, with Lot 3's p-value of **0.04167797** being lower than .05, the null hypothesis is true. 


## Study Design: MechaCar vs Competition

A statistical study that can quantify how the MechaCar performs against the competition. In today's economy, consumers report maintencance costs and saftey socres being the top factors in choosing cars to purchase. We will test the metrics of maintainance costs and fuel efficiency to see it MechaCar acts as a longterm budget friendly option. 
We will us an ANOVA to see if the distribution of fuel efficiency is better with a sample of MechaCar or samples of the competition. We can test multiple metrics at once. 

Null Hypothesis. MechaCar's mean will be lower than the mean of the competition. Standard Significance. 


