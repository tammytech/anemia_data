install.packages("tidyverse")
library(tidyverse)
#load dataset
anemia_data <- read.csv("anemia.csv")

head(anemia_data)
str(anemia_data)
summary(anemia_data)

#basic cleaning
#check missing values
colSums(is.na(anemia_data))
#remove rows with missing values
anemia_data <- na.omit(anemia_data)
# check for duplicates
anemia_data <- distinct(anemia_data)
anemia_data_Hemoglobin <- as.numeric(anemia_data$Hemoglobin)

#Mean
mean(anemia_data_Hemoglobin)
#Median
median(anemia_data_Hemoglobin)
#mode
mode(anemia_data_Hemoglobin)
# Density chart 
plot(density(anemia_data$Hemoglobin))
#histogram
hist(anemia_data$Hemoglobin)
#boxplot
boxplot(anemia_data$Hemoglobin)
