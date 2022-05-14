# ---------------------------------------------------------------------------------------------------------------------------
## DELIVERABLE 1
# ---------------------------------------------------------------------------------------------------------------------------
# 1.1.- Use the library() function to load the dplyr package:
install.packages("dplyr")
library(dplyr)

# 1.2.- Import and read in the MechaCar_mpg.csv file as a dataframe:
mechaCharMPG <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Challenge 15/data/MechaCar_mpg.csv")

# 1.3.- Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and 
# add the dataframe you created in Step 4 as the data parameter.
linearModel <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCharMPG)

# 1.4.- Using the summary() function, determine the p-value and the r-squared value for the linear regression model:
summary(linearModel)

# ---------------------------------------------------------------------------------------------------------------------------
## DELIVERABLE 2
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)
# 2.1.-  In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table:
suspensionCoil <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Challenge 15/data/Suspension_Coil.csv")

# 2.2.- Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, 
# variance, and standard deviation of the suspension coil’s PSI column:
total_summary <- data.frame(t(c(Mean=mean(suspensionCoil$PSI), Median=median(suspensionCoil$PSI), Variance=var(suspensionCoil$PSI), SD=sd(suspensionCoil$PSI))))
  
# 2.3.- Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group 
# each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# ---------------------------------------------------------------------------------------------------------------------------
## DELIVERABLE 3
# ---------------------------------------------------------------------------------------------------------------------------
# 3.1.- In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all 
# manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch:
t.test(suspensionCoil$PSI, mu=1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to 
# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per 
# square inch:
t.test(suspensionCoil[suspensionCoil$Manufacturing_Lot == "Lot1",]$PSI, mu=1500)
t.test(suspensionCoil[suspensionCoil$Manufacturing_Lot == "Lot2",]$PSI, mu=1500)
t.test(suspensionCoil[suspensionCoil$Manufacturing_Lot == "Lot3",]$PSI, mu=1500)
  
  
  
  
  
  