library(datasets); library(xts); library(forecast)
for (i in 1:17261)
{
  j = 3000;
  ok =  ts(buy_data[(62*j+1):(62*(j+1)),4])
  fit.ets<- ets(ok,model="AAA")
plot(fit.ets)
}
season <- fit.ets$states[,"l"]

plot(as.xts(season)  ,auto.grid=F)
