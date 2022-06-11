#Import library
library(dplyr)

#Import CVSs
mechaCar <- read.csv("MechaCar_mpg.csv")

susCoil <- read.csv("Suspension_Coil.csv")

# multiple linear regression
linRegModel <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar) #generate multiple linear regression model
linRegModel
summary(linRegModel)


#Suspension Coil Summaries
#total summary
total_summary <- summarize(susCoil, Mean = mean(PSI), Median = median(PSI), SD = sd(PSI), Variation = var(PSI))

#lot summary
lot_summary <- summarize(group_by(susCoil, Manufacturing_Lot), Mean = mean(PSI), Median = median(PSI), SD = sd(PSI), Variation = var(PSI))


# T Tests
total_Ttest <- t.test(susCoil$PSI, mu = 1500)


lot_1_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
lot_2_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
lot_3_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)