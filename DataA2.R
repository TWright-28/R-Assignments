#Assignment 2

a)

chickwts[14,]
#weight    feed
#14    141 linseed

b)

chickwts[c(7,14,37),1]
#[1] 108 141 423


c)

subset(chickwts, feed == "casein" )

#weight   feed
#60    368 casein
#61    390 casein
#62    379 casein
#63    260 casein
#64    404 casein
#65    318 casein
#66    352 casein
#67    359 casein
#68    216 casein
#69    222 casein
#70    283 casein
#71    332 casein


d)
mean(chickwts$weight)
#[1] 261.3099

e)
Feed <- factor(chickwts$feed)
Feed
#[1] 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 3 5 5 5 5 5 5 5 5 5 5
#[33] 5 5 5 5 6 6 6 6 6 6 6 6 6 6 6 6 4 4 4 4 4 4 4 4 4 4 4 1 1 1 1 1
#[65] 1 1 1 1 1 1 1
#Levels: 1 2 3 4 5 6
levels(Feed)[1] <- "Casein"
levels(Feed)[2] <- "Horsebean"
levels(Feed)[3] <- "Linseed"
levels(Feed)[4] <- "Meatmeal"
levels(Feed)[5] <- "Soybean"
levels(Feed)[6] <- "Sunflower"

Feed

#[1] Horsebean Horsebean Horsebean Horsebean Horsebean Horsebean
#[7] Horsebean Horsebean Horsebean Horsebean Linseed   Linseed  
#[13] Linseed   Linseed   Linseed   Linseed   Linseed   Linseed  
#[19] Linseed   Linseed   Linseed   Linseed   Soybean   Soybean  
#[25] Soybean   Soybean   Soybean   Soybean   Soybean   Soybean  
#[31] Soybean   Soybean   Soybean   Soybean   Soybean   Soybean  
#[37] Sunflower Sunflower Sunflower Sunflower Sunflower Sunflower
#[43] Sunflower Sunflower Sunflower Sunflower Sunflower Sunflower
#[49] Meatmeal  Meatmeal  Meatmeal  Meatmeal  Meatmeal  Meatmeal 
#[55] Meatmeal  Meatmeal  Meatmeal  Meatmeal  Meatmeal  Casein   
#[61] Casein    Casein    Casein    Casein    Casein    Casein   
#[67] Casein    Casein    Casein    Casein    Casein   
#Levels: Casein Horsebean Linseed Meatmeal Soybean Sunflower

chickwts$Feed <- Feed
chickwts

#weight      feed      Feed
#1     179 horsebean Horsebean
#2     160 horsebean Horsebean
#3     136 horsebean Horsebean
#4     227 horsebean Horsebean
#5     217 horsebean Horsebean
#6     168 horsebean Horsebean
#7     108 horsebean Horsebean
8     124 horsebean Horsebean
9     143 horsebean Horsebean
10    140 horsebean Horsebean
11    309   linseed   Linseed
12    229   linseed   Linseed
13    181   linseed   Linseed
14    141   linseed   Linseed
15    260   linseed   Linseed
16    203   linseed   Linseed
17    148   linseed   Linseed
18    169   linseed   Linseed
19    213   linseed   Linseed
20    257   linseed   Linseed
21    244   linseed   Linseed
22    271   linseed   Linseed
23    243   soybean   Soybean
24    230   soybean   Soybean
25    248   soybean   Soybean
26    327   soybean   Soybean
27    329   soybean   Soybean
28    250   soybean   Soybean
29    193   soybean   Soybean
30    271   soybean   Soybean
31    316   soybean   Soybean
32    267   soybean   Soybean
33    199   soybean   Soybean
34    171   soybean   Soybean
35    158   soybean   Soybean
36    248   soybean   Soybean
37    423 sunflower Sunflower
38    340 sunflower Sunflower
39    392 sunflower Sunflower
40    339 sunflower Sunflower
41    341 sunflower Sunflower
42    226 sunflower Sunflower
43    320 sunflower Sunflower
44    295 sunflower Sunflower
45    334 sunflower Sunflower
46    322 sunflower Sunflower
47    297 sunflower Sunflower
48    318 sunflower Sunflower
49    325  meatmeal  Meatmeal
50    257  meatmeal  Meatmeal
51    303  meatmeal  Meatmeal
52    315  meatmeal  Meatmeal
53    380  meatmeal  Meatmeal
54    153  meatmeal  Meatmeal
55    263  meatmeal  Meatmeal
56    242  meatmeal  Meatmeal
57    206  meatmeal  Meatmeal
58    344  meatmeal  Meatmeal
59    258  meatmeal  Meatmeal
60    368    casein    Casein
61    390    casein    Casein
62    379    casein    Casein
63    260    casein    Casein
64    404    casein    Casein
65    318    casein    Casein
66    352    casein    Casein
67    359    casein    Casein
68    216    casein    Casein
69    222    casein    Casein
70    283    casein    Casein
71    332    casein    Casein


f)
chick240 <- subset(chickwts, weight<240)

#weight      feed      Feed
#1     179 horsebean Horsebean
#2     160 horsebean Horsebean
#3     136 horsebean Horsebean
#4     227 horsebean Horsebean
#5     217 horsebean Horsebean
#6     168 horsebean Horsebean
#7     108 horsebean Horsebean
#8     124 horsebean Horsebean
#9     143 horsebean Horsebean
10    140 horsebean Horsebean
12    229   linseed   Linseed
13    181   linseed   Linseed
14    141   linseed   Linseed
16    203   linseed   Linseed
17    148   linseed   Linseed
18    169   linseed   Linseed
19    213   linseed   Linseed
24    230   soybean   Soybean
29    193   soybean   Soybean
33    199   soybean   Soybean
34    171   soybean   Soybean
35    158   soybean   Soybean
42    226 sunflower Sunflower
54    153  meatmeal  Meatmeal
57    206  meatmeal  Meatmeal
68    216    casein    Casein
69    222    casein    Casein

g)

chick240Table <- table(chick240$feed)
barplot(chick240Table

2.
a)

nrow(cuckoos)
#[1] 120

b)
cuckoos[27,1]
#[1] 22

c)
cuckoos[40,]
#length breadth      species id
#40   22.9    17.2 meadow.pipit 60

d)
Species <-levels(cuckoos$species)
Species
#[1] "hedge.sparrow" "meadow.pipit"  "pied.wagtail" 
#[4] "robin"         "tree.pipit"    "wren" 

e)
m.pipitFactor <- factor(cuckoos$species)
as.integer(m.pipitFactor)
#[1] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
#[29] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 5 5 5 5 5 5 5 5 5 5 5
#[57] 5 5 5 5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 4 4 4 4 4 4 4 4 4 4
#[85] 4 4 4 4 4 4 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 6 6 6 6 6 6 6
#[113] 6 6 6 6 6 6 6 6
levels(m.pipitFactor)[2] <- "meadow.pipit"
levels(m.pipitFactor)[-c(2)] <- "Other"
m.pipitFactor

#[1] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[5] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[9] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[13] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[17] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[21] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[25] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[29] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[33] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[37] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[41] meadow.pipit meadow.pipit meadow.pipit meadow.pipit
#[45] meadow.pipit Other        Other        Other       
#[49] Other        Other        Other        Other       
#[53] Other        Other        Other        Other       
#[57] Other        Other        Other        Other       
#[61] Other        Other        Other        Other       
#[65] Other        Other        Other        Other       
#[69] Other        Other        Other        Other       
#[73] Other        Other        Other        Other       
#[77] Other        Other        Other        Other       
#[81] Other        Other        Other        Other       
#[85] Other        Other        Other        Other       
#[89] Other        Other        Other        Other       
#[93] Other        Other        Other        Other       
#[97] Other        Other        Other        Other       
#[101] Other        Other        Other        Other       
#[105] Other        Other        Other        Other       
#[109] Other        Other        Other        Other       
#[113] Other        Other        Other        Other       
#[117] Other        Other        Other        Other       
#Levels: Other meadow.pipit

f)

m.pip.logical <- (m.pipitFactor == "meadow.pipit")

#[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[10]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[19]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[28]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[37]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[46] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[64] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[82] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[100] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[118] FALSE FALSE FALSE

cuckoos$m.pipit <- m.pip.logical
cuckoos

#length breadth       species  id m.pipit
#1     21.7    16.1  meadow.pipit  21    TRUE
#2     22.6    17.0  meadow.pipit  22    TRUE
#3     20.9    16.2  meadow.pipit  23    TRUE
#4     21.6    16.2  meadow.pipit  24    TRUE
#5     22.2    16.9  meadow.pipit  25    TRUE
6     22.5    16.9  meadow.pipit  26    TRUE
7     22.2    17.3  meadow.pipit  27    TRUE
8     24.3    16.8  meadow.pipit  28    TRUE
9     22.3    16.8  meadow.pipit  29    TRUE
10    22.6    17.0  meadow.pipit  30    TRUE
11    20.1    16.5  meadow.pipit  31    TRUE
12    22.0    16.9  meadow.pipit  32    TRUE
13    22.8    16.5  meadow.pipit  33    TRUE
14    22.0    17.0  meadow.pipit  34    TRUE
15    22.4    17.0  meadow.pipit  35    TRUE
16    22.3    16.3  meadow.pipit  36    TRUE
17    20.6    16.2  meadow.pipit  37    TRUE
18    22.1    16.8  meadow.pipit  38    TRUE
19    21.9    17.0  meadow.pipit  39    TRUE
20    23.0    16.9  meadow.pipit  40    TRUE
21    22.0    17.0  meadow.pipit  41    TRUE
22    22.0    17.0  meadow.pipit  42    TRUE
23    22.1    17.3  meadow.pipit  43    TRUE
24    22.0    16.8  meadow.pipit  44    TRUE
25    19.6    15.8  meadow.pipit  45    TRUE
26    22.8    17.1  meadow.pipit  46    TRUE
27    22.0    16.9  meadow.pipit  47    TRUE
28    23.4    16.4  meadow.pipit  48    TRUE
29    23.8    16.4  meadow.pipit  49    TRUE
30    23.3    16.8  meadow.pipit  50    TRUE
31    22.5    17.1  meadow.pipit  51    TRUE
32    22.3    17.0  meadow.pipit  52    TRUE
33    21.9    17.1  meadow.pipit  53    TRUE
34    22.0    17.2  meadow.pipit  54    TRUE
35    21.7    16.2  meadow.pipit  55    TRUE
36    23.3    16.7  meadow.pipit  56    TRUE
37    22.2    16.8  meadow.pipit  57    TRUE
38    22.3    16.2  meadow.pipit  58    TRUE
39    22.8    16.4  meadow.pipit  59    TRUE
40    22.9    17.2  meadow.pipit  60    TRUE
41    23.7    17.0  meadow.pipit  61    TRUE
42    22.0    17.2  meadow.pipit  62    TRUE
43    21.9    17.0  meadow.pipit  63    TRUE
44    22.2    16.2  meadow.pipit  64    TRUE
45    24.4    16.2  meadow.pipit  65    TRUE
46    22.7    16.3    tree.pipit  66   FALSE
47    23.3    16.6    tree.pipit  67   FALSE
48    24.0    17.0    tree.pipit  68   FALSE
49    23.6    16.9    tree.pipit  69   FALSE
50    22.1    16.3    tree.pipit  70   FALSE
51    21.8    16.7    tree.pipit  71   FALSE
52    21.1    16.5    tree.pipit  72   FALSE
53    23.4    16.2    tree.pipit  73   FALSE
54    23.8    16.3    tree.pipit  74   FALSE
55    23.3    16.7    tree.pipit  75   FALSE
56    24.0    17.5    tree.pipit  76   FALSE
57    23.5    17.3    tree.pipit  77   FALSE
58    23.2    16.4    tree.pipit  78   FALSE
59    24.0    17.3    tree.pipit  79   FALSE
60    22.4    16.0    tree.pipit  80   FALSE
61    22.0    17.0 hedge.sparrow  82   FALSE
62    23.9    16.9 hedge.sparrow  83   FALSE
63    20.9    15.8 hedge.sparrow  84   FALSE
64    23.8    17.3 hedge.sparrow  85   FALSE
65    25.0    17.5 hedge.sparrow  86   FALSE
66    24.0    17.5 hedge.sparrow  87   FALSE
67    21.7    16.2 hedge.sparrow  88   FALSE
68    23.8    16.5 hedge.sparrow  89   FALSE
69    22.8    16.2 hedge.sparrow  90   FALSE
70    23.1    17.1 hedge.sparrow  91   FALSE
71    23.1    16.1 hedge.sparrow  92   FALSE
72    23.5    16.9 hedge.sparrow  93   FALSE
73    23.0    16.7 hedge.sparrow  94   FALSE
74    23.0    17.0 hedge.sparrow  95   FALSE
75    21.8    16.0         robin  96   FALSE
76    23.0    15.9         robin  97   FALSE
77    23.3    17.1         robin  98   FALSE
78    22.4    16.6         robin  99   FALSE
79    22.4    16.9         robin 100   FALSE
80    23.0    16.1         robin 101   FALSE
81    23.0    17.2         robin 102   FALSE
82    23.0    16.2         robin 103   FALSE
83    23.9    16.9         robin 104   FALSE
84    22.3    15.2         robin 105   FALSE
85    22.0    16.3         robin 106   FALSE
86    22.6    17.0         robin 107   FALSE
87    22.0    16.0         robin 108   FALSE
88    22.1    16.4         robin 109   FALSE
89    21.1    16.4         robin 110   FALSE
90    23.0    17.0         robin 111   FALSE
91    23.0    16.3  pied.wagtail 198   FALSE
92    23.4    16.7  pied.wagtail 199   FALSE
93    24.0    17.0  pied.wagtail 200   FALSE
94    23.3    16.3  pied.wagtail 201   FALSE
95    23.1    16.7  pied.wagtail 202   FALSE
96    22.4    16.5  pied.wagtail 203   FALSE
97    21.8    16.0  pied.wagtail 204   FALSE
98    21.8    16.0  pied.wagtail 205   FALSE
99    24.9    16.8  pied.wagtail 206   FALSE
100   24.0    15.8  pied.wagtail 207   FALSE
101   22.1    16.2  pied.wagtail 208   FALSE
102   21.0    17.1  pied.wagtail 209   FALSE
103   22.6    16.0  pied.wagtail 210   FALSE
104   21.9    16.9  pied.wagtail 211   FALSE
105   24.0    17.2  pied.wagtail 212   FALSE
106   19.8    15.0          wren 224   FALSE
107   22.1    16.0          wren 225   FALSE
108   21.5    16.2          wren 226   FALSE
109   20.9    15.7          wren 227   FALSE
110   22.0    16.2          wren 228   FALSE
111   21.0    15.5          wren 229   FALSE
112   22.3    16.0          wren 230   FALSE
113   21.0    15.9          wren 231   FALSE
114   20.3    15.5          wren 232   FALSE
115   20.9    15.9          wren 233   FALSE
116   22.0    16.0          wren 234   FALSE
117   20.0    15.7          wren 235   FALSE
118   20.8    15.9          wren 236   FALSE
119   21.2    16.0          wren 237   FALSE
120   21.0    16.0          wren 238   FALSE

g)
cuckoosMPipit <- data.frame(subset(cuckoos, m.pipit%in%c(TRUE)))
 cuckoosMPipit
 
#length breadth      species id m.pipit
#1    21.7    16.1 meadow.pipit 21    TRUE
#2    22.6    17.0 meadow.pipit 22    TRUE
3    20.9    16.2 meadow.pipit 23    TRUE
4    21.6    16.2 meadow.pipit 24    TRUE
5    22.2    16.9 meadow.pipit 25    TRUE
6    22.5    16.9 meadow.pipit 26    TRUE
7    22.2    17.3 meadow.pipit 27    TRUE
8    24.3    16.8 meadow.pipit 28    TRUE
9    22.3    16.8 meadow.pipit 29    TRUE
10   22.6    17.0 meadow.pipit 30    TRUE
11   20.1    16.5 meadow.pipit 31    TRUE
12   22.0    16.9 meadow.pipit 32    TRUE
13   22.8    16.5 meadow.pipit 33    TRUE
14   22.0    17.0 meadow.pipit 34    TRUE
15   22.4    17.0 meadow.pipit 35    TRUE
16   22.3    16.3 meadow.pipit 36    TRUE
17   20.6    16.2 meadow.pipit 37    TRUE
18   22.1    16.8 meadow.pipit 38    TRUE
19   21.9    17.0 meadow.pipit 39    TRUE
20   23.0    16.9 meadow.pipit 40    TRUE
21   22.0    17.0 meadow.pipit 41    TRUE
22   22.0    17.0 meadow.pipit 42    TRUE
23   22.1    17.3 meadow.pipit 43    TRUE
24   22.0    16.8 meadow.pipit 44    TRUE
25   19.6    15.8 meadow.pipit 45    TRUE
26   22.8    17.1 meadow.pipit 46    TRUE
27   22.0    16.9 meadow.pipit 47    TRUE
28   23.4    16.4 meadow.pipit 48    TRUE
29   23.8    16.4 meadow.pipit 49    TRUE
30   23.3    16.8 meadow.pipit 50    TRUE
31   22.5    17.1 meadow.pipit 51    TRUE
32   22.3    17.0 meadow.pipit 52    TRUE
33   21.9    17.1 meadow.pipit 53    TRUE
34   22.0    17.2 meadow.pipit 54    TRUE
35   21.7    16.2 meadow.pipit 55    TRUE
36   23.3    16.7 meadow.pipit 56    TRUE
37   22.2    16.8 meadow.pipit 57    TRUE
38   22.3    16.2 meadow.pipit 58    TRUE
39   22.8    16.4 meadow.pipit 59    TRUE
40   22.9    17.2 meadow.pipit 60    TRUE
41   23.7    17.0 meadow.pipit 61    TRUE
42   22.0    17.2 meadow.pipit 62    TRUE
43   21.9    17.0 meadow.pipit 63    TRUE
44   22.2    16.2 meadow.pipit 64    TRUE
45   24.4    16.2 meadow.pipit 65    TRUE


cuckoosOther <- data.frame(subset(cuckoos, m.pipit%in%c(FALSE)))
cuckoosOther

length breadth       species  id m.pipit
46    22.7    16.3    tree.pipit  66   FALSE
47    23.3    16.6    tree.pipit  67   FALSE
48    24.0    17.0    tree.pipit  68   FALSE
49    23.6    16.9    tree.pipit  69   FALSE
50    22.1    16.3    tree.pipit  70   FALSE
51    21.8    16.7    tree.pipit  71   FALSE
52    21.1    16.5    tree.pipit  72   FALSE
53    23.4    16.2    tree.pipit  73   FALSE
54    23.8    16.3    tree.pipit  74   FALSE
55    23.3    16.7    tree.pipit  75   FALSE
56    24.0    17.5    tree.pipit  76   FALSE
57    23.5    17.3    tree.pipit  77   FALSE
58    23.2    16.4    tree.pipit  78   FALSE
59    24.0    17.3    tree.pipit  79   FALSE
60    22.4    16.0    tree.pipit  80   FALSE
61    22.0    17.0 hedge.sparrow  82   FALSE
62    23.9    16.9 hedge.sparrow  83   FALSE
63    20.9    15.8 hedge.sparrow  84   FALSE
64    23.8    17.3 hedge.sparrow  85   FALSE
65    25.0    17.5 hedge.sparrow  86   FALSE
66    24.0    17.5 hedge.sparrow  87   FALSE
67    21.7    16.2 hedge.sparrow  88   FALSE
68    23.8    16.5 hedge.sparrow  89   FALSE
69    22.8    16.2 hedge.sparrow  90   FALSE
70    23.1    17.1 hedge.sparrow  91   FALSE
71    23.1    16.1 hedge.sparrow  92   FALSE
72    23.5    16.9 hedge.sparrow  93   FALSE
73    23.0    16.7 hedge.sparrow  94   FALSE
74    23.0    17.0 hedge.sparrow  95   FALSE
75    21.8    16.0         robin  96   FALSE
76    23.0    15.9         robin  97   FALSE
77    23.3    17.1         robin  98   FALSE
78    22.4    16.6         robin  99   FALSE
79    22.4    16.9         robin 100   FALSE
80    23.0    16.1         robin 101   FALSE
81    23.0    17.2         robin 102   FALSE
82    23.0    16.2         robin 103   FALSE
83    23.9    16.9         robin 104   FALSE
84    22.3    15.2         robin 105   FALSE
85    22.0    16.3         robin 106   FALSE
86    22.6    17.0         robin 107   FALSE
87    22.0    16.0         robin 108   FALSE
88    22.1    16.4         robin 109   FALSE
89    21.1    16.4         robin 110   FALSE
90    23.0    17.0         robin 111   FALSE
91    23.0    16.3  pied.wagtail 198   FALSE
92    23.4    16.7  pied.wagtail 199   FALSE
93    24.0    17.0  pied.wagtail 200   FALSE
94    23.3    16.3  pied.wagtail 201   FALSE
95    23.1    16.7  pied.wagtail 202   FALSE
96    22.4    16.5  pied.wagtail 203   FALSE
97    21.8    16.0  pied.wagtail 204   FALSE
98    21.8    16.0  pied.wagtail 205   FALSE
99    24.9    16.8  pied.wagtail 206   FALSE
100   24.0    15.8  pied.wagtail 207   FALSE
101   22.1    16.2  pied.wagtail 208   FALSE
102   21.0    17.1  pied.wagtail 209   FALSE
103   22.6    16.0  pied.wagtail 210   FALSE
104   21.9    16.9  pied.wagtail 211   FALSE
105   24.0    17.2  pied.wagtail 212   FALSE
106   19.8    15.0          wren 224   FALSE
107   22.1    16.0          wren 225   FALSE
108   21.5    16.2          wren 226   FALSE
109   20.9    15.7          wren 227   FALSE
110   22.0    16.2          wren 228   FALSE
111   21.0    15.5          wren 229   FALSE
112   22.3    16.0          wren 230   FALSE
113   21.0    15.9          wren 231   FALSE
114   20.3    15.5          wren 232   FALSE
115   20.9    15.9          wren 233   FALSE
116   22.0    16.0          wren 234   FALSE
117   20.0    15.7          wren 235   FALSE
118   20.8    15.9          wren 236   FALSE
119   21.2    16.0          wren 237   FALSE
120   21.0    16.0          wren 238   FALSE

h)

cuckoosLongLength <- data.frame(subset(cuckoos, length>23))
cuckoosLongLength

#length breadth       species  id m.pipit
#8     24.3    16.8  meadow.pipit  28    TRUE
#28    23.4    16.4  meadow.pipit  48    TRUE
#29    23.8    16.4  meadow.pipit  49    TRUE
30    23.3    16.8  meadow.pipit  50    TRUE
36    23.3    16.7  meadow.pipit  56    TRUE
41    23.7    17.0  meadow.pipit  61    TRUE
45    24.4    16.2  meadow.pipit  65    TRUE
47    23.3    16.6    tree.pipit  67   FALSE
48    24.0    17.0    tree.pipit  68   FALSE
49    23.6    16.9    tree.pipit  69   FALSE
53    23.4    16.2    tree.pipit  73   FALSE
54    23.8    16.3    tree.pipit  74   FALSE
55    23.3    16.7    tree.pipit  75   FALSE
56    24.0    17.5    tree.pipit  76   FALSE
57    23.5    17.3    tree.pipit  77   FALSE
58    23.2    16.4    tree.pipit  78   FALSE
59    24.0    17.3    tree.pipit  79   FALSE
62    23.9    16.9 hedge.sparrow  83   FALSE
64    23.8    17.3 hedge.sparrow  85   FALSE
65    25.0    17.5 hedge.sparrow  86   FALSE
66    24.0    17.5 hedge.sparrow  87   FALSE
68    23.8    16.5 hedge.sparrow  89   FALSE
70    23.1    17.1 hedge.sparrow  91   FALSE
71    23.1    16.1 hedge.sparrow  92   FALSE
72    23.5    16.9 hedge.sparrow  93   FALSE
77    23.3    17.1         robin  98   FALSE
83    23.9    16.9         robin 104   FALSE
92    23.4    16.7  pied.wagtail 199   FALSE
93    24.0    17.0  pied.wagtail 200   FALSE
94    23.3    16.3  pied.wagtail 201   FALSE
95    23.1    16.7  pied.wagtail 202   FALSE
99    24.9    16.8  pied.wagtail 206   FALSE
100   24.0    15.8  pied.wagtail 207   FALSE
105   24.0    17.2  pied.wagtail 212   FALSE

cuckoosLongLengthbreadthaverage <- mean(cuckoos$breadth)
cuckoosLongLengthbreadthaverage

#[1] 16.55167