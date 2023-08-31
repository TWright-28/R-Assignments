#q1.(0.101)2 -> (?)10

# 2^-1 + 2^-3 = 0.625

#q2. (.101)10 -> (?)2

#    00011001110110....

#q3.
#    B would be more precise since it is making smaller calculations instead
#    of one big one where the answer may get rounded.

#q4.
#a)
primes[9901:10000]
#b)
p <- primes(1:9000)
sum(p)

#q5.
#break the x^8 and y^8 into x^4 y^4 x^2 Y^2 which will equal the bottom exactly so you 
#can cancel them out. You will get 1 when dividing them all by each other and then you subtract the 1
#resulting in 0.

# 0



#q6.
first<- "2003-12-12"
lastd<- "1999-07-5"
numberofDays <- chron(dates=first, format = c('y-m-d'))
numberofDayslast<- chron(dates=lastd, format = c('y-m-d'))
numberofDays-numberofDayslast

#Time in days:
# [1] 1621

q7.
income <- matrix(c(93.07, 66.79, 70.16, 67.22, 75.24, 72.96), ncol = 6, nrow =1)
colnames(income) <- c("Ottawa", "Toronto", "London", "Windsor", "Sudbury", "Thunderbay")
barplot(income, xlab = 'Cities', ylab= 'Income (in $1000s)', main = '2009 Family Income in Six Cities',  ylim = c(0,100))
dotchart(income, xlab= 'Income (in $1000s)', labels = colnames(income), ylab = 'Cities', xlim = c(40,100), ylim = c(0,100), main = '2009 Family Income in Six Cities')

#q8.
#a)
returns1 <- diff(EuStockMarkets[,1])
#b)
hist(returns1, breaks = 'Scott')
hist(returns1, breaks = 'fd')
#FD has a smaller bandwidth
#c) 
#The data seems symmetrically distributed not skewed


