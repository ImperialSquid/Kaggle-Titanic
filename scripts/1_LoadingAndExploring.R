# Load packages
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('randomForest') # classification algorithm


#Loading data
train = read.csv('data/train.csv', stringsAsFactors = F)
test  = read.csv('data/test.csv', stringsAsFactors = F)

full = bind_rows(train, test)

#viewing the data
str(full)
