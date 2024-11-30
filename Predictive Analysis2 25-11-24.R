hr<- read.csv("C:/Users/Lab2Pc24/Downloads/HR.csv")
hr
head (hr)
str(hr)
colnames(hr)[9]<-"department" 
head(hr)
hr$department = as.factor(hr$department)
hr$salary = as.factor(hr$salary)
str(hr)
set.seed(1234)

index = sample(1:nrow(hr), 0.8*nrow(hr))
train= hr[index, ]
test = hr[-index, ]
library(rpart)

# syntax rpart(outpur~input)

dt_model = rpart(left~., data=train,
                 method='class')

# evaluating the model - confusion matrix
test$prediction = predict(dt_model, test, type='class')
table (test$left, test$prediction)

#from the below confusion matrix get the accuracy, precision, recall




#practice question 
adm<- read.csv("C:/Users/Lab2Pc24/Downloads/admission.csv")
adm
str(adm)
set.seed(12345)

index = sample(1:nrow(adm), 0.8*nrow(adm))
train1= adm[index, ]
test1 = adm[-index, ]



dt_model1 = rpart(admit~., data=train1,
                  method='class')

# evaluating the model - confusion matrix
test1$prediction = predict(dt_model1, test1, type='class')
table (test1$admit, test1$prediction)

