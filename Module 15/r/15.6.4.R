# ---------------------------------------------------------------------------------------------------------------------------
## 15.6.4: USE THE TWO-SAMPLE T-TEST TO COMPARE SAMPLES
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Import dataset:
mpg_data <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics\ Boot Camp/mechacar-statistical-analysis/Module 15/data/mpg_modified.csv")

# Select only data points where the year is 1999:
mpg_1999 <- mpg_data %>% filter(year==1999) 

# Select only data points where the year is 2008:
mpg_1999 <- mpg_data %>% filter(year==2008)

# Compare the mean difference between two samples:
t.test(mpg_199$hwy, mpg_2008$hwy, paired=T)

