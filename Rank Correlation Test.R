RankCorrelationTest<-function(y,x){
  n<-length(y)
  n2<-n^2
  ols<-lm(y~x)
  e<-summary(ols)$residuals
  abse<-abs(e)
  Re<-rank(abse)
  Rx<-rank(x)
  d<-Re-Rx
  d2<-d^2
  Sd2<-sum(d2)
  rs<-(1)-(6*Sd2/(n*(n2-1)))
  rs2<-rs^2
  t<-as.numeric(rs*sqrt(n-2))/(sqrt(1-rs2))
  df<-n-2
  output<-list(t,df)
  return(output)
}

#y<-c(12.4, 14.4, 14.6, 16.0, 11.3, 10.0, 16.2, 10.4, 13.1, 11.3)
#x<-c(12.1, 21.4, 18.7, 21.7, 12.5, 10.4, 20.8, 10.2, 16.0, 12.0)
#RankCorrelationTest(y,x)
