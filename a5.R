setwd("C:/Users/Tanner/Desktop/cosc 421")
library(igraph)
options(digits=3) 

nodes <- read.csv("lawyers.csv", header=T) # Attributes Data
cowork = matrix(scan("Cowork.txt"),ncol=71,nrow=71,byrow=T)
graph <- graph_from_adjacency_matrix(cowork, mode = "directed")
graph <- as.undirected(graph, mode="collapse")
q1
louvain <- cluster_louvain(graph)
nodes[10] <- louvain$membership
plot(graph, vertex.color=rainbow(4)[nodes$V10] )

q2
nodes$community <- membership(louvain)