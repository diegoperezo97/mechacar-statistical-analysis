# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.6: CREATE HEATMAP PLOTS
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Create graph to visualize the average highway fuel efficiency across the type of vehicle class from 1999 to 2008:
# Create summary table:
mpg_summary <- mpg %>% group_by(class, year) %>% summarize(Mean_Hwy=mean(hwy), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=class, y=factor(year), fill=Mean_Hwy))

# Create heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class", y="Vehicle Year", fill="Mean Highway [MPG]")

# Create a graph to look at the difference in average highway fuel efficiency across each vehicle model from 1999 to 2008:
# Create summary table:
mpg_summary <- mpg %>% group_by(model, year) %>% summarize(Mean_Hwy=mean(hwy), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=model, y=factor(year), fill=Mean_Hwy))

# Add heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class", y="Vehicle Year", fill="Mean Highway [MPG]")

# Rotate x-axis labels 90 degrees:
theme(axis.text.x=element_text(angle=90, hjust=1, vjust=0.5))