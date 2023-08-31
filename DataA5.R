#Assignment 5
#Tanner Wright 68878735

#q1
sintaylor <- function(f){
 m<-10
  sum<- 0
 for(i in 0:m){
   
   x<- (2*i)+1
   numerator<- (-1)^i
   denominator <- factorial(x)
   
     sum <- sum+((numerator/denominator)*(f^x))
 } 
  return(sum)
  
}
sintaylor(5)
#[1] -0.9589238
 sin(5)
#[1] -0.9589243


#q2
library(lattice)
Popu <- read.table("population.csv", header = TRUE, sep = ",")
Year <- c(Popu$REF_DATE)
Province <- c(Popu$GEO)
Pop <- c(Popu$VALUE)

Year.as.character <- as.character(Year)
CanPop<- data.frame(Year, Province, Pop)

dotplot(Province ~ Pop |Year.as.character, data = CanPop )

#q3
#a)
library(lattice)
murd <- read.table("murders.csv", header = FALSE, sep = ",")
Year <- murd[,1]
Province <- murd[,2]
Murders <- murd[,11]
Year <- c(Year[2:40])
Murders <-Murders[2:40]
Province <- Province[2:40]
Year.as.character <- as.character(Year)
Murders.as.numeric <- as.numeric(Murders)
CanPopMurders<- data.frame(Year.as.character, Murders.as.numeric, Province)

#b)
Murd17 <- subset(CanPopMurders, Year == 2017)
Murd18 <- subset(CanPopMurders, Year == 2018)
Murd19 <- subset(CanPopMurders, Year == 2019)
Summurders2017<-sum(Murd17$Murders.as.numeric)
Summurders2018<-sum(Murd18$Murders.as.numeric)
Summurders2019<-sum(Murd19$Murders.as.numeric)

MurdersPerYear <- c(Summurders2017, Summurders2018, Summurders2019)
MurdersYears <- c(2017, 2018, 2019)
MurdersPerYearav <- data.frame("Year" =MurdersYears, "Murders" = MurdersPerYear)


dotplot(Province ~ Murders.as.numeric|Year.as.character, data = CanPopMurders)
dotplot(Murders ~ Year, data = MurdersPerYearav)
#c)
CanPopMurders$MurdersPerCapita <- c((Murders.as.numeric/Pop)*100000)
dotplot(Province~ MurdersPerCapita|Year, data = CanPopMurders)
dotplot(Murders.as.numeric ~ Year.as.character, data = CanPopMurders)

#d)


m2017 <- subset(CanPopMurders, Year == 2017) 
murd2017sum<- sum(m2017$Murders.as.numeric)
m2018 <- subset(CanPopMurders, Year ==2018 )
murd2018sum <- sum(m2017$Murders.as.numeric)
m2019 <- subset(CanPopMurders, Year == 2019 )
murd2019sum <- sum(m2019$Murders.as.numeric)

pop2017sum <- sum(subset(Pop, Year == 2017))
pop2018sum <- sum(subset(Pop, Year == 2018))
pop2019sum <- sum(subset(Pop, Year == 2019))

murdper2017cap<- c((murd2017sum/pop2017sum)*100000)
murdper2018cap<- c((murd2018sum/pop2018sum)*100000)
murdper2019cap<- c((murd2019sum/pop2019sum)*100000)

mu2017 <- c(murd2017sum, pop2017sum, murdper2017cap)
mu2018 <- c(murd2018sum, pop2018sum, murdper2018cap)
mu2019 <- c(murd2019sum, pop2019sum, murdper2019cap)
   

m2017 <- subset(CanPopMurders, Year == 2017) 
murd2017sum<- sum(m2017$Murders.as.numeric)
m2018 <- subset(CanPopMurders, Year ==2018 )
murd2018sum <- sum(m2017$Murders.as.numeric)
m2019 <- subset(CanPopMurders, Year == 2019 )
murd2019sum <- sum(m2019$Murders.as.numeric)

pop2017sum <- sum(subset(Pop, Year == 2017))
pop2018sum <- sum(subset(Pop, Year == 2018))
pop2019sum <- sum(subset(Pop, Year == 2019))

murdper2017cap<- c((murd2017sum/pop2017sum)*100000)
murdper2018cap<- c((murd2018sum/pop2018sum)*100000)
murdper2019cap<- c((murd2019sum/pop2019sum)*100000)

mu2017 <- c(2017, murd2017sum, murdper2017cap)
mu2018 <- c(2018, murd2018sum, murdper2018cap)
mu2019 <- c(2019, murd2019sum, murdper2019cap)

Summurders<- data.frame(Year = c(mu2017[1], mu2018[1], mu2019[1]), Murders = c(mu2017[2], mu2018[2], mu2019[2]), MPC = c(mu2017[3], mu2018[3], mu2019[3]))
dotplot(Murders.as.numeric ~ MPC|as.character(Year), data = Summurders)

#e)
Provi <- c("Newfoundland and Labrador","Prince Edward Island","Nova Scotia", "New Brunswick",
               "Quebec",  "Ontario" , "Manitoba", "Saskatchewan","Alberta","British Columbia", "Yukon", 
               "Northwest Territories","Nunavut")
murds2017 <- (CanPopMurders$Year.as.character == 2017)
barplot(CanPopMurders$Murders.as.numeric[murds2017], names.arg = Provi, cex.names = 0.35, las =2)
#f)
murds2018 <- (CanPopMurders$Year.as.character == 2018)
murds2019 <- (CanPopMurders$Year.as.character == 2019)

barplot(CanPopMurders$Murders.as.numeric[murds2018], names.arg = Provi, cex.names = 0.35, las =2)
barplot(CanPopMurders$Murders.as.numeric[murds2019], names.arg = Provi, cex.names = 0.35, las =2)

#g)
MurdersPerCapita2017 <- CanPopMurders$MurdersPerCapita[murds2017]
MurdersPerCapita2018 <- CanPopMurders$MurdersPerCapita[murds2018]
MurdersPerCapita2019 <- CanPopMurders$MurdersPerCapita[murds2019]

Canhomicides <- cbind(MurdersPerCapita2017, MurdersPerCapita2018, MurdersPerCapita2019)
colnames(Canhomicides) <- c("2017", "2018", "2019")
par(mfrow = c(1,3))

barplot(CanPopMurders$MurdersPerCapita[murds2017], names.arg = Provi, cex.names = 0.35, las =2, main = "2017 Murders by Province")
barplot(CanPopMurders$MurdersPerCapita[murds2018], names.arg = Provi, cex.names = 0.35, las =2, main = "2018 Murders by Province")
barplot(CanPopMurders$MurdersPerCapita[murds2019], names.arg = Provi, cex.names = 0.35, las =2, main = "2019 Murders by Province")


#q4

#a)
library(MPV)
library(lattice)
source("radon-1.R")
MvsD.lm <- lm(measurement ~ diameter, data = radon)
PRESS(MvsD.lm)
#[1] 266.6634

#b)
time<- rep(1:4, 6)
MvsDvsT.lm <- lm(measurement ~ diameter + time, data = radon)
PRESS(MvsDvsT.lm)
#[1] 151.6716

#We would prefer the second one, since it is smaller

#c)
predict(MvsDvsT.lm, newdata = data.frame(diameter = 0.9, time = 1))
#       1
#70.73473 
predict(MvsDvsT.lm, newdata = data.frame(diameter = 0.9, time = 4))
#       1
#76.38473 

#q5
source("mousetumors.R")
library(MPV)
library(lattice)
xyplot(volume ~ time, data = mousetumours, pch = 16, type = c("smooth", "p"), span = 2)

#q6)
b4.lm <- lm(y~ x1+x2+x3+x4+x5+x6+x7+x8+x9, data = table.b4)
PRESS(b4.lm)
393.492

b4.lm <- lm(y~ x1, data = table.b4)
PRESS(b4.lm)
224.6111

b4.lm <- lm(y~ x1+x8, data = table.b4)
PRESS(b4.lm)
253.9058

b4.lm <- lm(y~ x1+x2, data = table.b4)
PRESS(b4.lm)
224.441 #this is the best choice 
 
 
b4.lm <- lm(y~ x1+x5, data = table.b4)
PRESS(b4.lm)
236.814

b4.lm <- lm(y~ x1+x3+x5+x8, data = table.b4)
PRESS(b4.lm)
329.0281 #this is the best choice without the tax information

b4.lm <- lm(y~ x2+x3+x5, data = table.b4)
PRESS(b4.lm)
374.1862

b4.lm <- lm(y~ x2+x3+x5+x9, data = table.b4)
PRESS(b4.lm)
422.3961


