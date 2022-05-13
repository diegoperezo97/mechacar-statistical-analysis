# ---------------------------------------------------------------------------------------------------------------------------
## 15.3.5: CREATE ADVANCED BOXPLOTS IN GGPLOT2
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# To generate a boxplot in ggplot2, we must supply a vector of numeric values. If we want to generate a boxplot to 
# visualize the highway fuel efficiency of our mpg dataset, our R code would look as follows:
# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(y=hwy))

# Add boxplot:
plt + geom_boxplot()

# Create a set of boxplots that compare highway fuel efficenciy for each car manufacturer:
# Import dataset into ggplot2:
plt <- ggplot(mpg, aes(x=manufacturer, y=hwy))

# Add boxplot and rotate x-axis labels 45 degrees:
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45, hjust=1))