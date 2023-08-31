#1
#a
pythag<- function(a, b){
  a<- a^2
  b<- b^2
  ab <- a+b
  sqrt(ab)
  
}

#b
rep(rep(c(0, 1), times = c(3,4)), times = 2100)
num <- rep(rep(c(0, 1), times = c(3,4)), times = 2100)

gender <- factor(num, labels = c("MALE", "FEMALE"))

#c)
BinCalc <-  function(n,m){
  
  facm <- factorial(m)
  facn <- factorial(n)
  
  denom <- (n-m)*facm
  num <- facn
  
  result <- (num/denom)
  
}
#d)
sqrtError <- function(x){
  results <- c()
  for(i in 1:length(x)){
    if(x[i] <0 ){
      result <- c("Error: At least one element of your input is negative")
      return("Error: At least one element of your input is negative")
    }
    else{
      result <- data.frame(sqrt(x[i]))
      results[i]<-result
    }
    
  }
  return(results)
}

#e)

mergesort <- function (x, d){
  
  if(d== FALSE){
    len <- length(x)
    if (len < 2) result <- x
    else {
      y <- x[1:(len / 2)]
      z <- x[-(1:(len / 2))]
      y <- mergesort(y)
      z <- mergesort(z)
      result <- c()
      while (min(length(y), length(z)) > 0) {
        if (y[1] < z[1]) {
          result <- c(result, y[1])
          y <- y[-1]
        } else {
          result <- c(result, z[1])
          z <- z[-1]
        }
      }
      if (length(y) > 0)
        result <- c(result, y)
      else
        result <- c(result, z)
    }
    return(result)
  }
  else{
    
    len <- length(x)
    if (len < 2) result <- x
    else {
      y <- x[1:(len / 2)]
      z <- x[-(1:(len / 2))]
      y <- mergesort(y)
      z <- mergesort(z)
      result <- c()
      while (min(length(y), length(z)) > 0) {
        if (y[1] <z[1]) {
          result <- c(result, y[1])
          y <- y[+1]
        } else {
          result <- c(result, z[1])
          z <- z[+1]
        }
      }
      if (length(y) > 0)
        result <- c(result, y)
      else
        result <- c(result, z)
    }
    return(result)
  }
}

#2)

funct <- c()
funct[1] = 1
funct[2] = 1

for(i in 3:200){
  funct[i] = 1.3*funct[i-1] - funct[i-2]*0.25
  
}

f200 = 2.715619e+05


#3)
twinprimes <- function(n) {
  
  if (n >= 2) {
    sieve <- seq(2, n)
    primes <- c()
    for (i in seq(2, n)) {
      if (any(sieve == i)) {
        primes <- c(primes, i)
        sieve <- c(sieve[(sieve %% i) != 0], i)
      }
    }
    
    primes <- matrix(primes, ncol =2, byrow = TRUE)
    return(primes)
    
    
  } else {
    stop("Input value of n should be at least 2.")
  }
}


#4)
#a)
library(MPV)
names(table.b11)
#[1] "Clarity"  "Aroma"    "Body"     "Flavor"   "Oakiness" "Quality"  "Region" 

#b)
plot(Quality~Aroma, data = table.b11)
abline(lm(Quality~Aroma, data = table.b11), col = "blue")

#C)
wine.lm <- lm(Quality~Aroma, data = table.b11)
predict(wine.lm, newdata = data.frame(Aroma = 4))

#1
#11.30433

#D)
xyplot(Quality ~ Aroma|Region, data = table.b11, span=2, type = c("smooth", "p"))
       
 #e)
xyplot(Quality~Aroma|Region, data = table.b11, groups = (Clarity<1), type = c("smooth", "p"))
       
#5)
#A)
install.packages("rpart")
library(rpart)
wine.rpart <- rpart(Quality ~ Aroma, data = table.b11)
plot(wine.rpart)
text(wine.rpart)
       
#b)
       
sus <- data.frame(Clarity = 1, Aroma = 7, Body=4, Flavor = 1.5, Oakiness =3, Region =2, data = table.b11)
wine.rpart <- rpart(Quality ~ sus$Clarity + sus$Aroma + sus$Body + sus$Flavor + sus$Oakiness+ sus$Region, data = table.b11)
predict(wine.rpart)     
       
       
#6)
       
#a)
wine.lm <- lm(Quality~Aroma+Clarity+Body+Flavor+Oakiness+Region, data = table.b11)
predict(wine.lm)

#b)
predict(wine.lm, newdata = data.frame(Clarity = 1, Aroma = 7, Body=4, Flavor = 1.5, Oakiness =3, Region =2))
#1 
#10.53694 
       
       
       
       
       
       
       