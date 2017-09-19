library(caret)
library(randomForest)
myfun=function(data,model=NULL,lev=NULL){
  historical=train$party_voted_past[data$rowIndex]
  predicted=data$pred
  actual=data$obs
  score=ifelse(actual==historical,ifelse(actual==predicted,50,0),ifelse(actual==predicted,100,-50))
  c(evalc=mean(score)*21207)
}


set.seed(1)

trctrl=trainControl(method="repeatedcv",
                    number = 3,
                    repeats = 1,
                    classProbs = TRUE,
                    summaryFunction = myfun,
                    allowParallel = FALSE
)

#tgrid=expand.grid(.alpha=c(1),.lambda=c(0.00001,0.00005,0.00010,0.00040,0.00080))
tgrid=expand.grid(.alpha=c(1),.lambda=c(0.00040))
model=train(actual_vote~.,
            data=train[,-c(1,2,34,35,37,38,41:45,50:55)],
            method="glmnet",
            metric="evalc",
            tuneGrid=tgrid,
            trControl=trctrl)

rm(trctrl,tgrid,myfun)


