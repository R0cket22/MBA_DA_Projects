#loading the csv file in r programming

he <- read.csv("C:/Users/Lab2Pc24/Downloads/Heart.csv")
he

#to return first 6 rows- head fn

head(he)

#to get specific number of rows we type head(variable name,rows required)

head(he, 12)

#to return first 6 rows- tail fn

tail(he)
#to get specific number of rows we type Tail(variable name,rows required)

tail(he, 12)


#to get how many rows and colunms are there we use dim()

dim(he)

#to understand the basic info str() fn is used   
str(he)

#to get the column names of the given data

names(he)

#to open the data in r use View fn

View(he)

#creating the column into a list by $ function

he$chest_pain_type

#table functions tells frequency
  
table(he$chest_pain_type)

#to fetch column by index
he[3]
#to fetch row by index
he[5,]

he[5,4]
# for getting summary of a particular column

summary(he$age)

#to get summary for whole data
summary(he)

maxh<- max(he$Max_heart_rate)
maxh

maxrow<- which(he$Max_heart_rate==maxh)

length(maxrow)


max(he$Max_heart_rate)
he[119,]
he[maxrow,]


#data cleaning 
sum(is.na(he))

str(he$sex)
he$sex <- as.factor(he$sex)
class(he$sex)


#numeric encoding

he$sex<- as.numeric(he$sex)

he$sex

onehot<- model.matrix(~chest_pain_type-1, data=he)
onehot
2+1


he$age<- scale(he$age)
he$cholestoral<- (he$cholestoral-min(he$cholestoral))/(max(he$cholestoral))

he[,c("resting_blood_pressure","Max_heart_rate")]<- scale(he[,c("resting_blood_pressure", "Max_heart_rate")])

he$target <- as.factor(he$target)
class(he$target)

install.packages("caret")
library(caret)


set.seed(123)

part<-createDataPartition(he$target, p = 0.7, list = FALSE )
part

traindf1<-he[part,]
testdf1<-he [part,]


#model building
install.packages("randomForest")
library(randomForest)
modelbi<-randomForest(target~age+sex+resting_blood_pressure+cholestoral, data = traindf1)
library(pROC)
PRED <- predict(modelbi, testdf1)
PRED

confusionMatrix(PRED, testdf1$target)


  