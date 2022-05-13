# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.2: BUILD A BAR PLOT IN GGPLOT2
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# First, we'll take a moment to familiarize ourselves with the mpg dataset. In the R console, type the following statement:
head(mpg)

# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(x=class))

# Plot a bar plot:
plt + geom_bar()

# Look at the geom_bar() documentation in the Help pane:
?geom_bar()

# Create summary table:
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=manufacturer, y=Vehicle_Count))

# Plot a bar plot:
plt + geom_col()