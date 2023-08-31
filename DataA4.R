#Q1)

#a)
install.packages("DAAG")
library(DAAG)
attach(Manitoba.lakes)#getting each component in the Manitoba.Lakes
plot(elevation, area, xlab = "Elevation", ylab = "Area", xlim = c(160,260), ylim = c(0,25000))#plotting the Manitoba.lakes
#Winnipeg is very different on the graph compared to everyone
#b)
text(elevation, area, cex = 0.5, labels = row.names(Manitoba.lakes[1:9,]), adj = 1.2)#adding text to the Manitoba.Lakes
#c)
Manitoba.lakes.lm <- lm(elevation ~ area, data = Manitoba.lakes)#getting a linear model of Manitoba.Lakes
abline(Manitoba.lakes.lm)#adding the line to the plot
detatch(Manitoba.lakes)#putting the components back into Manitoba.lakes
#Q2)
#a)
plot(Loblolly$age, Loblolly$height)#plotting age vs height
Loblolly.lm <- lm(height ~ age, data = Loblolly)#getting a linear model
abline(Loblolly.lm)#adding to the graph

#Q3)
#for the lakes and elevation, it seems fairly random as winnipeg is way higher up while everything is below that regardless of its area
#for the trees, it does seem acceptable when looking at each abline they are all fairly constant

#Q4)
intercepts <- c() #creating an empty vectors so they can add the intercept in each case of n
slopes <- c()#creating an empty vectors so they can add the slope in each case of n
plot(Loblolly$age, Loblolly$height)#creating the plot
for(n in Loblolly$Seed){
  height<- Loblolly$height[Loblolly$Seed == n]#getting the height with respect to the seed
  age <- Loblolly$age[Loblolly$Seed == n]#getting the age with respect to the seed
  heiage <- height ~ age   #heigage is height vs age
  heiage.lm <- lm(heiage)  #creating a new lm of heigage (best fit linear model)
  slopes <- append(slopes, c(as.numeric(heiage.lm$coefficients[[2]]))) #adding the current slope to the empty slope vector
  intercepts <- append(intercepts, c(as.numeric(heiage.lm$coefficients[[1]])))#adding the current intercept to the empty intercept vector
  abline(heiage.lm) #will add the line to the plot
}

#q5)
par(mfrow=c(1,2))#creating two plots side by side
hist(intercepts)#histogram for intercepts and slop
hist(slopes)


#q6)
par(mfrow=c(1,1))#creating a plot
plot(slopes ~ intercepts)#plotting slopes vs intercepts
abline(lm(intercepts~slopes))#adding the linear model line to the plot
mean(intercept)
#[1] -1.312396
mean(slope)
#[1] 2.590523

