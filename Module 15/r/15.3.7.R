# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.7: ADD LAYERS TO PLOTS
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Create boxplot comparing the highway fuel efficiency accross amnufacturers using geom_point() function:
# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(x=manufacturer, y=hwy))

# Add boxplot:
plt + geom_boxplot() + (

  # Rotate x-axis labels 45 degrees:
  theme(axis.text.x=element_text(angle=45, hjust=1)) +
  
  # Overlay scatterplot on top:
  geompoint())

# Create summary table:
mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_engine=mean(displ), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=class, y=Mean_Engine))

# Add scatterplot:
plt + geom_point(size=4) + labs(x="Vehicle Class", y="Mean Engine Size")

# Compute the standard deviations in our dplyr summarize() function, and adding layer with the upper and lower 
# standard deviation boundaries to our visualization using the geom_errorbar() function:
# Create summary table:
mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_engine=mean(displ), SD_Engine=sd(displ), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=class, y=Mean_Engine))

# Add scatterplot:
plt + geom_point(size=4) + labs(x="Vehicle Class", y="Mean Engine Size") + (
  
  #Overlay with error bars:
  geom_errorbar(aes(ymin=Mean_Engine - SD_Engine, ymax=Mean_Engine + SD_Engine)))

# Convert to long format:
mpg_long <- mpg %>% gather(key="MPG_Type", value="Rating", c(cty, hwy))
head(mpg_long)

# Import dataset into ggplot2:
plt <- ggplot(mpg_long, aes(x=manufacturer, y=Rating, color=MG_Type))

# Add boxplot with labels rotated 45 degrees:
plot + geom_boxplot() + theme(axis.text.x=element_text(angle=45, hjust=1))

# Type the following code into the R console to look at the facet_wrap() documentation in the Help pane:
?facet_wrap()

# Import dataset into ggplot2:
plt <- ggplot(mpg_long, aes(x=manufacturer, y=Rating, color=MG_Type))

# Create multiple boxplots, one for each MPG type:
plot + geom_boxplot() + facet_wrap(vars(MPG_Type)) + (
  
  # Rotate x-axis label:
  theme(axis.text.x=element_text(angle=45, hjust=1), legend.position="none") + xlab("Manufacturer"))








