# ---------------------------------------------------------------------------------------------------------------------------
## 15.6.2: USE THE TWO-SAMPLE T-TEST
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

population_table <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Module 15/data/used_car_data.csv")

# First, we produce our two samples using the following R statements:
sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points

# Compare means of two samples:
t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven))