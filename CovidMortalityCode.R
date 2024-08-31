library(mlbench)
library(e1071)

library(tidyverse)
library(readxl)
library(caret)



#setwd("C:/Users/User.DESKTOP-PM04AA1/Documents/UMBC/CourseDataSets")

setwd("C:/Users/Owner/Desktop/CMSC462/hw3")

CovidMortality = read_excel("CovidMortality.xlsx")
glimpse(CovidMortality)




CovidMortality = subset(CovidMortality, State != "Puerto Rico")



# Fit the linear regression model and assign it to "MyModel"
MyModel = lm(Deaths ~ Population + Area + Party + Region + Income + IncomeRanked + PopDensRanked, data = CovidMortality)
#MyModel = lm(Deaths ~ Population, data = CovidMortality)

summary(MyModel)

## ANOVA (Analysis of Variance) Table
anova(MyModel)


