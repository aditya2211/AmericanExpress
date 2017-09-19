#creating new features PvR

train$same1<- NA;
train$rest1 <- NA;

for (i in 1:dim(train)[1])
{

  if(train$party_voted_past[i]=="Centaur")
  {train$same1[i]<-train$mvar1[i]  
  train$rest1[i]<- sum(train[i,c(4:7)])}
  
  if(train$party_voted_past[i]=="Ebony")
    {train$same1[i]<-train$mvar2[i]  
  train$rest1[i]<- sum(train[i,c(3,5:7)])}
  
  if(train$party_voted_past[i]=="Tokugawa")
    {train$same1[i]<-train$mvar3[i]  
  train$rest1[i]<- sum(train[i,c(3,4,6,7)])}
  
  if(train$party_voted_past[i]=="Odyssey")
    {train$same1[i]<-train$mvar4[i]  
  train$rest1[i]<- sum(train[i,c(3,4,5,7)])}
  
  if(train$party_voted_past[i]=="Cosmos")
    {train$same1[i]<-train$mvar5[i] 
  train$rest1[i]<- sum(train[i,c(3,4,5,6)])}
  
}

test$same1<-NA
test$rest1<-NA

for (i in 1:dim(test)[1])
{
  
  if(test$party_voted_past[i]=="Centaur")
  {test$same1[i]<-test$mvar1[i]  
  test$rest1[i]<- sum(test[i,c(4:7)])}
  
  if(test$party_voted_past[i]=="Ebony")
  {test$same1[i]<-test$mvar2[i]  
  test$rest1[i]<- sum(test[i,c(3,5:7)])}
  
  if(test$party_voted_past[i]=="Tokugawa")
  {test$same1[i]<-test$mvar3[i]  
  test$rest1[i]<- sum(test[i,c(3,4,6,7)])}
  
  if(test$party_voted_past[i]=="Odyssey")
  {test$same1[i]<-test$mvar4[i]  
  test$rest1[i]<- sum(test[i,c(3,4,5,7)])}
  
  if(test$party_voted_past[i]=="Cosmos")
  {test$same1[i]<-test$mvar5[i] 
  test$rest1[i]<- sum(test[i,c(3,4,5,6)])}
  
}