# MechaCar_Statistical_Analysis
Using Rstuido for statistical analysis

## Linear Regression to Predict MPG
I created a linear regression model based on multiple aspects of a vehicle to predict the MPG.

Linear Regression Model:
![linRegModel](https://user-images.githubusercontent.com/99688417/173203309-0bcede28-2e25-4c74-b146-e8e3fa5cf638.png)

Summary of model:
![Summary(linRegModel)](https://user-images.githubusercontent.com/99688417/173203329-35bae84c-eeeb-4fd2-9090-9ce85cda57f4.png)

Based on the model, Vehicle_length, vehicle_weight, and ground_clearance are significant factors because of their p values and these data points significantly impact a car's MPG, and because the p value is less than .05 significance level the slope cannot be 0. This Regression model is pretty accurate at predicting a car's MPG based on this data. Because the r-squared and adjusted R-squared are around .70 these data points can predict a car's mpg around 70% of the time.

## Summary Statistics on Suspension Coils
I created two tables to compare the summary statitics for suspension coils. 
Total Summary:
![total_summary](https://user-images.githubusercontent.com/99688417/173203401-e97fa46e-200c-4d96-8405-d1c03de50f16.png)

Lot Summary:
![lot_summary](https://user-images.githubusercontent.com/99688417/173203405-5c3c3930-a56b-4426-8a02-82a03c0c352c.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the tables above lot 3s variation greatly exceeds 100, but when you look at the combined lot summary the variation balances out.

## T-Tests on Suspension Coils
I ran a t-test on the PSI of the suspension coils for each lot and a test for all lost combined to determine if the hypothesis that the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

Lot 1:
![lot1_test](https://user-images.githubusercontent.com/99688417/173203668-9fa280e6-ed8f-4262-be3c-3c26d9b596c5.png)

The test results show a p value of 1 which means the PSI of manufacturing lot 1 is not statistically different than the population mean of 1,500 PSI.

Lot 2:
![lot2_test](https://user-images.githubusercontent.com/99688417/173203669-a4049e1b-4bda-4d63-8556-6620b9ef7531.png)

The test results show a p value of .607 and is not significat at either .05 or .01 level meaning lot 2 is not statistically different than the population mean of 1,500 PSI.

Lot 3:
![lot3_test](https://user-images.githubusercontent.com/99688417/173203684-2604ff35-b2bf-4567-8a0b-9f89041a3acc.png)

The test results show a p value of 0.0416  which is significant at the level .05 meaning that lot 3 is statistically different than the population mean of 1,500 PSI.

All lots:

![total_test](https://user-images.githubusercontent.com/99688417/173203738-af95ca7a-2d60-41c5-a33a-e87f26911263.png)

The test results show a p value of .06 which is not significant at .05 meaning that all the lots are not statistically different than the population mean of 1,500 PSI.

## Study Design: MechaCar vs Competition
I would like to do a study that compares the safety rating in relation to the price of MechaCar against its competitors. I would hypothesize that the higher the price of the car the safer it is to drive. By collecting the safety ratings, accident reports, and price of MechaCar and its competitors, I would perform a linear regression using the cor() function to measure the correlation between safety and price. My results would show a direct relationship between the two variables.
