setwd("C:/Users/Tanner/Desktop/cosc 421")
library(igraph)
nodes <- read.csv("vertex911.csv", header = T)
adj <- read.csv("adj911-1.csv", header=T)
head(adj)
adj <- as.matrix(adj)
g <- graph_from_adjacency_matrix(adj, mode = "undirected")
V(g)$color <- "blue"
V(g)$color[1:19] <- "red"

q2
eigen.cent <- eigen_centrality(g)
nodes[,5] = eigen.cent$vectornodes

q3
nodes[,6] = betweenness(g)
top5 <- nodes[with(nodes, order(V6)),]
nodes[,7] = closeness(g)
top5 <- nodes[with(nodes, order(V7)),]

q4
clique_size_counts(g)
cliques(g) [sapply(cliques(g), length) == 6]

q5./
  
g2 <- graph_from_adjacency_matrix(adj[1:19,1:19], mode = "undirected")
V(g2)$color <- nodes[1:19,3]
plot(g2)

table(sapply(cliques(g2),length))

1  2  3  4 
19 27  9  1 

