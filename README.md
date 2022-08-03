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
