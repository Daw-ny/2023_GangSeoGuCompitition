### set directory
setwd('D:/log/대학원/공모전/강서구/리더지우')

### load library
library(dplyr)
library(car)
library(nnet)

### load data
data = read.csv('4차완료.csv', header = T)
data2 = data %>%
  select(-crosswalk_id, -target, -cafe_50)
model = lm(accident ~ ., data = data2)

data3 = data2 %>%
  select(-smart_crosswalk, -acca_count)
model2 = lm(accident ~ ., data = data3)

