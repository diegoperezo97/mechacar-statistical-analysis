# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.4: BUILD A LINE PLOT WITH GGPLOT2
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Compare the differences in average highway fuel economy (hwy) of Toyota vehicles as a function of the different cylinder 
# sizes (cyl), our R code would look like the following:
# Create summary table:
mpg_summary <- subset(mpg, manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups="keep")

# Import dataset into ggplot2:
plt <- ggplot(mpg_summary, aes(x=cyl, y=Mean_Hwy))

# Once we set up our ggplot object, we can generate our line plot using geom_line():
plt + geom_line()

# To adjust the x-axis and y-axis tick values, we'll use the scale_x_discrete() and scale_y_continuous() functions:
# Add line plot with labels:
plt + geom_line() + scale_x_discrete(limits=c(4, 6, 8) + scale_y_continuous(breaks=c(15:30)))

# Create a scatter plot to visualize the relationship between the size of each car engine (displ) versus their city fuel 
# efficiency (cty), we would create the following ggplot object:
# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(x=displ, y=cty))

# Once we successfully create our ggplot object, we can generate our scatter plot using the geom_point() function:
# Add scatter plot with labels:
plt + geom_point() + xlab("Engine Size [L]") + ylab("City Fuel-Efficiency [MPG]")

# Apply custom aesthetics to our previous example, to visualize the relationship between city fuel efficiency and engine 
# size, while grouping by additional variables of interest:
# Import datset into ggplot2:
plt <- ggplot(mpg, aes(x=displ, y=cty, color=class))

# Add scatter plot with labels:
plt + geom_point() + labs(x="Engine Size [L]", y="City Fuel Efficiency [MPG]", color="Vehicle Class")

# We're not limited to only adding one aesthetic:
# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(x=displ, y=cty, color=class, shape=drv))

# Add scatter plot with multiple aesthetics:
plt + geom_point() + labs(x="Engine Size [L]", y="City Fuel Efficiency [MPG]", color="Vehicle Class")









