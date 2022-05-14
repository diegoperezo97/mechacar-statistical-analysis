install.packages("ggplot2")
library(ggplot2)

# Read in the CSV file. 
hair <- read.csv(file="/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Wednesday, April 6th 2022/15-2-Student_Resources/05-Stu_ANOVA/Resources/hair.csv")

#  Plot the data using ggplot
ggplot(hair, aes(x=HairColour, y=Pain)) + geom_boxplot()

# Determine the p-value using ANOVA
summary(aov(Pain ~ HairColour, data=hair))