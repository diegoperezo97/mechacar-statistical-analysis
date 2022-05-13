# ---------------------------------------------------------------------------------------------------------------------------
## 15.7.1: THE CORRELATION CONUNDRUM
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

?cor()

head(mtcars)

# Import dataset into ggplot2:
plt <- ggplot(mtcars, aes(x=hp, y=qsec))

# Create a scatter plot:
plt + geom_point()

# Calculate correlation coefficient:
cor(mtcars$hp, mtcars$qsec)

# Read in dataset:
used_cars <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Module 15/data/used_car_data.csv")

head(used_cars)

# Test whether or not vehicle miles driven and selling price are correlated. Plot two variables using the geom_point() 
# function:
# Import dataset into ggplot2:
plt <- ggplot(used_cars, aes(x=Miles_Driven, y=Selling_Price))

# Create a scatter plot:
plt + geom_point()

# Calculate correlation coefficient:
cor(used_cars$Miles_Driven, used_cars$Selling_Price)

# Convert dataframe into numeric matrixL
used_matrix <- as.matrix(used_cars[,c("Selling_Price", "Present_Price", "Miles_Driven")])

cor(used_matrix)