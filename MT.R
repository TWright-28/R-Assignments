1.
a)
mean(Nile)
[1] 919.35

b)
median(Nile)
[1] 893.5

c)
hist(Nile, xlab = 'Histogram of Nile Flowrate', ylab = 'River flow observations')

d)
Nile<- sort(Nile, decreasing = TRUE)
Nile[15]
#1140 
Nile[25]
#1040

e)
order(Nile)

#[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  86
#[15]  87  85  84  83  82  81  80  79  78  77  76  75  74  73
#[29]  72  71  70  69  68  67  66  65  64  63  60  61  62  59
#[43]  58  57  56  55  54  52  53  51  50  49  48  47  46  45
#[57]  44  43  42  41  40  39  38  37  36  35  34  33  32  31
#[71]  30  27  28  29  26  24  25  22  23  19  20  21  18  16
#[85]  17  14  15  13  10  11  12   9   8   6   7   5   4   3
#[99]   2   1

f)
Order will give you the elements position in the vector and since
we have set it to decreasing it is position 1 and 2.
Sort will give you the value within the element.

2.
a)
NAvector <- source("NAvector.R")

b)
NAcount <- is.na("NAvector")

3)
a)
Manatoba.lakes <- data.frame()
first<- c(217, 254, 248, 254, 253, 227, 178, 207, 217)
second <- c(24387,5374,4624, 2247, 1353, 1223,1151, 755, 657)
Manitoba.lakes <- data.frame(nrow = first, ncol = second)
colnames(Manitoba.lakes) <- c("elevation", "area")


b)
sd(Manitoba.lakes$elevation>1200)


4.
a)
tomatoes <- read.table("ex10.22.txt", header = TRUE, sep="")

b)
yieldmean <- aggregate(EFC, FUN = mean, data = tomatoes )

c) 
temp <- factor(tomatoes$EFC)
levels(temp)[1] <- "1"
levels(temp)[2] <- "2"
levels(temp)[3] <- "3"
levels(temp)[4] <- "4"






