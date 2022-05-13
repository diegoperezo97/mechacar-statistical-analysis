# ---------------------------------------------------------------------------------------------------------------------------
## 15.6.2: USE THE ONE-SAMPLE T-TEST
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

?t.test()

# Import used car dataset:
population_table <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Module 15/data/used_car_data.csv")

# Randomly sample 50 data points:
sample_table <- population_table %>% sample_n(50)

# If we want to test if the miles driven from our previous sample dataset is statistically different from the miles driven 
# in our population data, we would use our t.test()function as follows:
# Compare sample versus population means:
t.test(log10(sample_table$Miles_Driven), mu=mean(log10(population_table$Miles_Driven))) 