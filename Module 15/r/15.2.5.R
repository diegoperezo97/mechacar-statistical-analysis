# ---------------------------------------------------------------------------------------------------------------------------
## 15.2.5: TRANSFORM, GROUP, AND RESHAPE DATA USING THE TIDYVERSE PACKAGE
# ---------------------------------------------------------------------------------------------------------------------------
# TRANSFORM

library(tidyverse)

?mutate()

# Add columns to original data frame:
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_miles/(2020 - Year), IsActive=TRUE)

# ---------------------------------------------------------------------------------------------------------------------------
## GROUP DATA

# Create summary table:
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups="keep")

# Create summary table iwth multiple columns:
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), Maximum_price=max(price), Num_Vehicles=n(), .groups="keep")

# ---------------------------------------------------------------------------------------------------------------------------
## RESHAPE DATA

# tidyr library from the tidyverse has the gather() and spread():
# gather() function is used to transform a wide dataset into a long dataset.
?gather()

demo_table3 <- read.csv("demo2.csv", check.names=F, stringsAsFactors=F)

library(readxl)
Vehicle_Data <- read_excel("Vehicle_Data.xlsx")
View(Vehicle_Data)

long_table <- gather(demo_table3, key="Metric", value="Score", buying_price:popularity)

# Alternatively, you may type the following function in the R console:
# long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)

?spread()

# If we want to spread out our previous long-format data frame back to its original format, 
# we would use the following spread() statement:
wide_table <- long_table %>% spread(key="Metric", value="Score")

# If we want to check if our newly created wide-format table is exactly the same as our original demo_table3, 
# we can use R's all.equal() function:
all.equal(demo_table3, wide_table)

# Try sorting the columns of both data frames using the order() and colnames() functions and bracket notation:
table <-demo_table3[,order(colnames(wide_table))]

# Or, sort the columns using the colnames() functions and bracket notation only:
# (The comma in the bracket indicates that we're selecting all rows)
# table <- demo_table3[,(colnames(wide_table))]