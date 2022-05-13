# ---------------------------------------------------------------------------------------------------------------------------
## 15.6.5: USE THE ANOVA TEST
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

?aov()

# Filter columns from mtcars dataset:
mtcars_filt <- mtcars[,c("hp", "cyl")]

# Convert numeric column to a factor:
mtcars_filt$cyl <- factor(mtcars_filt$cyl)

# Compare means across multiple levels:
aov(hp ~ cyl, data=mtcars_filt)

# Due to the fact that the ANOVA model is used in many forms, the initial output of our aov() does not contain our p-values.
# To retrieve our p-values, we have to wrap our aov() function in a summary() function as follows:
summary(aov(hp ~ cyl, data=mtcars_filt))