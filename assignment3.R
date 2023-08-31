setwd("C:/Users/Tanner/Desktop/cosc 421")
options(digits=3)
library(igraph)
advice <- matrix(scan("Advice.txt"),ncol=71,nrow=71,byrow=T)
nodes <- read.csv("lawyers.csv", header=T)
head(nodes)
graph <- graph_from_adjacency_matrix(advice, mode = "directed")

1. Use the nodes dataframe to complete the following table of
counts of lawyers in various categories

table(nodes$Status) 
1  2 
36 35 

table(nodes$Gender) 

1  2 
53 18 

table(nodes$Practice) 

1  2 
41 30 

Question 2. A graph object in igraph can be appended in a number of ways.
Information about the vertices may be added to a graph object as a vertex attribute.
Then these attributes can be used to improve the graph visualization. 


V(graph)$status <- nodes$Status
V(graph)$practice <- nodes$Practice
V(graph)$city <- nodes$City
plot(graph, vertex.size=5, edge.arrow.size=0.5, vertex.color=V(graph)$practice, vertex.color='red')
V(graph)$color <- ifelse(V(graph)$practice == 1, "blue", "red")
graphLayout <- layout_(graph, as_star())
plot(graph, layout=graphLayout, vertex.size=5, edge.arrow.size=0.2, vertex.color=V(graph)$color)

V(graph)$color <- ifelse(V(graph)$practice == 1, "yellow", "green")
graphLayout <- layout_(graph, as_tree())
plot(graph, layout=graphLayout, vertex.size=5, edge.arrow.size=0.2, vertex.color=V(graph)$color)



q3

deg.in <- degree(graph, mode = "in") 
hist(deg.in)
deg.out <- degree(graph, mode = "out") 
hist(deg.out)

cor(deg.in, deg.out)
0.14

q5
nodes[,10] <- deg.in
nodes[,11] <- deg.out
colnames(nodes)[10:11] <-c("indegree","outdegree")
nodes[0:5,]
Name Seniority Status Gender City Years Age Practice LawSchool indegree outdegree
1   V1         1      1      1    1    31  64        1         1       22         3
2   V2         2      1      1    1    32  62        2         1       23         7
3   V3         3      1      1    2    13  67        1         1        8         7
4   V4         4      1      1    1    31  59        2         3       19        17
5   V5         5      1      1    2    31  59        1         2       17         4


plot(nodes$Seniority, nodes$indegree)
plot(nodes$Seniority, nodes$outdegree)

boxplot(nodes$Seniority, nodes$outdegree)
boxplot(nodes$Seniority, nodes$indegree)
aggregate(indegree ~ Status, data = nodes, mean)
Status indegree
1      1    17.69
2      2     7.29

aggregate(outdegree ~ Status, data = nodes, mean)
Status outdegree
1      1      12.6
2      2      12.5

b

boxplot(nodes$Practice, nodes$indegree)
boxplot(nodes$Practice, nodes$outdegree)
aggregate(outdegree ~ Practice, data = nodes, mean)
Practice outdegree
1        1      12.8
2        2      12.2
aggregate(indegree ~ Practice, data = nodes, mean)
Practice indegree
1        1     13.3
2        2     11.6

eigen.cent <- eigen_centrality(graph)
