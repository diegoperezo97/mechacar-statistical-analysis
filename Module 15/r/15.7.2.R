# ---------------------------------------------------------------------------------------------------------------------------
## 15.7.2: RETURN TO LINEAR REGRESSION
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

install.packages("ggplot2")
library(ggplot2)

?lm()

# To create a linear regression model, our R statement would be as follows:
# Create linear model:
lm(qsec ~ hp, mtcars)

# To determine p-value and r-squared value for a simple linear regression model, use summary() function:
# Summarize linear model:
summary(lm(qsec ~ hp, mtcars))

# Create linear model:
model <- lm(qsec ~ hp, mtcars)

# Determine y-axis values from linear model:
yvals <- model$coefficients["hp"] * mtcars$hp

model$coefficients["(Intercept)"]

# Import dataset into ggplot2:
plt <- ggplot(mtcars, aes(x=hp, y=qsec))

# Plot scatter and linear model:
plt + geom_point() + geom_line(aes(y=yvals), color="red")




