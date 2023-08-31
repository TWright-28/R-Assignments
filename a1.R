nodes <- read.csv('airports.csv', header = TRUE)
edges <- read.csv("flights.csv" , header=TRUE)
airports <- graph_from_data_frame(edges, nodes, directed=FALSE)
vertex_attr(airports) <- list(name = nodes$code)
airportsLayout <- layout_(airports, as_star())
plot(airports, layout = airportsLayout)

degree(airports)
mean(degree(airports))
[1] 6.533333

degreeDistribution <- degree_distribution(airports)
hist.default(degreeDistribution)

get.adjacency(airports)