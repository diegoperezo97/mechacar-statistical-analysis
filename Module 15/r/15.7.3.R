# ---------------------------------------------------------------------------------------------------------------------------
## 15.7.3: PERFORM MULTIPLE LINEAR REGRESSION
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

install.packages("ggplot2")
library(ggplot2)

# Generate multiple linear regression model:
lm(qsec ~ mpg + disp + drat + wt + hp, data=mtcars)

# Generate summary statistics:
summary(lm(qsec ~ mpg + disp + drat + wt + hp, data=mtcars))