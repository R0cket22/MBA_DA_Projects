loan = read.csv(file.choose())
loan
str(loan)
View(loan)
nloan<- loan[-c(1,5)]

nloan

nloan$Education<- as.factor(nloan$Education)

nloan$Education
str(nloan)
install.packages('rpart')
library(rpart)
#splitting the data into train and test
set.seed(1234)
index = sample(1:nrow(nloan), 0.8*nrow(nloan))
train= nloan[index,]
test = nloan[-index,]

dt_model = rpart(Personal.Loan~., data=train,
                  method='class')

# evaluating the model - confusion matrix
test$prediction1 = predict(dt_model, test, type='class')
table (test$Personal.Loan, test$prediction1)

81/81+5
81+5
81/86
81+17
81/98
81+897+17+5
81+897
978/1000

install.packages('e1071')
library(e1071)




nb_model= naiveBayes(Personal.Loan~., data=train)
test= test[c(-13)]
test$prediction_1 = predict(nb_model, test)
table (test$Personal.Loan, test$prediction_1)

install.packages("caret")
library(caret)
confusionMatrix(factor(test$Personal.Loan),
                factor(test$prediction_1))
