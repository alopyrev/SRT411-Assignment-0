#6.3 Data Frames
x1= rnorm(100)
x2= rnorm(100)
x3= rnorm(100)


t= data.frame(a= x1, b = (x1+x2),c = (x1+x2+x3))

t

plot(t)

sd(t$a)
sd(t$b)
sd(t$c)

#7 Graphics

plot(t$a, type="l", ylim=range(t),
     lwd=3, col=rgb(1,0,0,0.3))
lines(t$b, type="s", lwd=2,
      col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4, col=rgb(0,0,1,0.3))

#The meaning of RGB is Red, Blue and Green. It determines the color of the markings on the graph.

#8 reading and writing from file

r2
r2 = read.table(file="tst1.txt", header=TRUE)
m= r2$g*5

write.table(m, file="tst2.txt")

#Computer the mean of the sqrt of 100 random numbers

sqrt(rnorm(100))

#What happens? we get NaNs produced, NaN = not a number.

#10.1 Make a graph with dates on X-Axis and presents on Y-Axis

dates= strptime(c("20160127", "20160904","20161224"),format="%Y%m%d")
presents = c(0,7,5)

plot(dates,presents)
lines(dates,presents)

#
hun = seq(from=1, to=100)
ss = c()

for(i in 1:length(hun)) 
  {
  if(hun[i] < 5) {
    ss[i] <- (hun[i] *10)
}else if (hun[i] > 90){
  ss[i] <- (hun[i] *10)
  }else{
    ss[i] = (hun[i]*0.1)
  }
}
ss;

fun1 = function(arg1)
{
ss1=c()
for(i in 1:length(arg1)) 
{
  if(arg1[i] < 5) {
    ss1[i] <- (arg1[i] *10)
  }else if (hun[i] > 90){
    ss1[i] <- (arg1[i] *10)
  }else{
    ss1[i] = (arg1[i]*0.1)
  }
}
ss1
}

