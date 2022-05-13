# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.3: ADD FORMATTING FUNCTIONS
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Create summary table:
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=manufacturer, y=Vehicle_Count))

# Plot bar plot with labels:
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset")

# Rotate the x-axis label 45 degrees:
theme(axis.text.x=element_text(angle=45, hjust=1))