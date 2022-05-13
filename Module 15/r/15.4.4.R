# ---------------------------------------------------------------------------------------------------------------------------
## 15.4.4: TEST FOR NORMALITY
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# The qualitative test for normality is a visual assessment of the distribution of data, which looks for the characteristic 
# bell curve shape across the distribution. In R, we would use ggplot2 to plot the distribution using the geom_density() 
# function:
# Visualize distribution using density plot:
ggplot(mtcars, aes(x=wt)) + geom_density()

# In R, we can use the built-in stats library to perform our quantitative test with the shapiro.test() function:
?shapiro.test()

# The shapiro.test() function only requires the numeric vector of values you wish to test:
shapiro.test(mtcars$wt)