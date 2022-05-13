sardines <- read.csv(file="/Users/diegoperezo97/Documents/Tecnológico de Monterrey – Data Analytics Boot Camp/mechacar-statistical-analysis/Wednesday, April 6th 2022/15-2-Student_Resources/03-Stu_Sardines/Resources/sardines.csv")

# Calculate the population mean for Sardine Vertebrae in Alaska.
# Hint: use the subset() function to get only the data for Alaska.
populationAk <- subset(sardines, location==1)
mean(populationAk[["vertebrae"]])

# Calculate the population mean for Sardine Vertebrae in San Diego.
# Hint: use the subset() function to get only the data for San Diego.
populationSd <- subset(sardines, location==6)
mean(populationSd[["vertebrae"]])

# Calculate Independent (Two Sample) T-Test
t.test(populationAk[["vertebrae"]], populationSd[["vertebrae"]])