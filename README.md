#  Clinical Blood Test Data Analysis in R
  ## Project Overview
This project explores a clinical blood dataset using R. The objective was to clean the data, calculate descriptive statistics (mean, median, and mode), and visualize the distribution of hemoglobin levels using histogram and density plots.

## Healthcare Relevance

Hemoglobin is a key hematologic marker used in diagnosing anemia and evaluating overall patient health. Understanding its distribution and variability is essential in clinical decision-making and population health analysis.

## Tools Used

## R

tidyverse

ggplot2

## Data Cleaning Steps

Checked for missing values

Removed incomplete observations

Removed duplicate records

Converted relevant columns to numeric format

##  Statistical Analysis

The following descriptive statistics were calculated:

Mean

Median

Mode (custom function)

## Visualizations

Histogram of Hemoglobin levels

Density plot of Hemoglobin levels

## Skills Demonstrated

Data cleaning and preprocessing

Descriptive statistics

Data visualization


Custom function creation in R

Exploratory Data Analysis (EDA)

##  Future Improvements

Compare hemoglobin levels by gender

Add boxplots for outlier detection

Conduct basic hypothesis testing

# script
### install Packages
``` R
install.packages("tidyverse")
library(tidyverse)
```
### Load dataset and check structure
```
anemia_data <- read.csv("anemia.csv")

head(anemia_data)
str(anemia_data)
summary(anemia_data)
```
### Basic cleaning and check for missing values
```
colSums(is.na(anemia_data))
```
### remove rows with missing values
```
anemia_data <- na.omit(anemia_data)
```
### Check for duplicates
```
anemia_data <- distinct(anemia_data)
anemia_data_Hemoglobin <- as.numeric(anemia_data$Hemoglobin)
```
### Mean
```
mean(anemia_data_Hemoglobin)
```
## #Median
```
median(anemia_data_Hemoglobin)
```
### Mode
```
mode(anemia_data_Hemoglobin)
```
### Density chart 
```
plot(density(anemia_data$Hemoglobin))
```
<img width="831" height="426" alt="Rplotden" src="https://github.com/user-attachments/assets/fe958c7e-189e-483c-90e3-5455f96a07d7" />#### histogram
```
hist(anemia_data$Hemoglobin)
```
<img width="831" height="426" alt="Rplothist" src="https://github.com/user-attachments/assets/8a0083e7-d638-4b00-acc1-9138a3c6905f" />

### boxplot
```
boxplot(anemia_data$Hemoglobin)
```
<img width="831" height="426" alt="Rplotbox" src="https://github.com/user-attachments/assets/44c039d9-1804-4b33-94a6-e453ebde0d34" />

