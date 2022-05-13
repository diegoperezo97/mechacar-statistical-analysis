# ---------------------------------------------------------------------------------------------------------------------------
## 15.6.1: SAMPLE VERSUS POPULATION DATASET
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

install.packages("ggplot2")
library(ggplot2)

# Type the following code into the R console to look at the sample_n() documentation in the Help pane, listed under the 
# subhead "Usage" in the image below:
?sample_n()

install.packages("readr")
library(readr)

# Import used car dataset:
population_table <- read.csv("/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Module 15/data/used_car_data.csv")

# Import dataset into ggplot2:
plt <- ggplot(population_table, aes(x=log10(Miles_Driven)))

# Visualize distribution using density plot:
plt + geom_density()

# Randomly sample 50 data points:
sample_table <- population_table %>% sample_n(50)

# Import dataset into ggplot2:
plt <- ggplot(sample_table, aes(x=log10(Miles_Driven)))

# Visualize distribution using density plot:
plt + geom_density()








