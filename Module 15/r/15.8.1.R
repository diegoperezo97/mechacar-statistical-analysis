# ---------------------------------------------------------------------------------------------------------------------------
## 15.8.1: CATEGORY COMPLEXITIES
# ---------------------------------------------------------------------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

?chisq.test()

# Test whether there is a statistical difference in the distributions of vehicle class across 1999 and 2008 from our mpg 
# dataset:
# Generate contingency table:
table(mpg$class, mpg$year)

# Generate contingency table:
tbl <- table(mpg$class, mpg$year)

# Compare categorical distributions:
chisq.test(tbl)