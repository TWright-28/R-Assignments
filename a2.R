nodes <- read.csv("NodesGrade4.csv", header=T) 
edges <- read.csv("EdgesGrade4.csv", header=T)
options(digits=3)
grade.graph <- graph_from_data_frame(edges,nodes, direct = TRUE)

Q1. How many nodes and edges are in the network?
  Edges - 63
  Nodes - 33
  
Q2. Plot the network graph with the following graph options:
  
  vertex.size=8
  edge.arrow.size=0.5
  vertex.color = V(grade.graph)$gender.code
  
  plot(grade.graph,vertex.label=V(grade.graph)$ gender.code,
      vertex.size=10,edge.arrow.size=0.5,
      vertex.color = V(grade.graph)$ gender.code)
  
  Boys -> Boys = 33
  Boys -> Girls = 1
  Girls -> Girls = 29
  Girls ->Boys = 0
  
  Total = 63
  
  From the above table, we can determine that there is more boys than Girls in this data. We can also determine 
  that almost both genders dont want to associate with the other gender except for one boy who chose one girl.
  We can also see how the students socialize and the cliques they are apart of. There are two girls who dont wan to sit
  with anyone else in the group.
  
  
Question 3. Compute and display using histograms the in- and out-degrees of students in your network. 
  
deg.in <- degree(grade.graph, mode = "in") 
hist(deg.in)

deg.out <- degree(grade.graph, mode = "out")
hist(deg.out)


These diagrams are different because they are measuring two different things. The in and the out degree. 
Students arent required to put someone for their seating choice but others can select them.
Looking at the out histogram, we can see that most students chose to put two people they wanted to sit with 
but not all of them chose 2 or even 1 person. The in Histogram however displays the number of people who want to sit
with students. most had 1 or 2 but there are a few students who are the most popular with 5 people selecting them

vector.degs <- c(deg.in)
nodes[,4] <- vector.degs
colnames(nodes)[4] <- "In"

aggregate(In ~ node.gender, data = nodes, mean)

node.gender   In
1      female 1.88
2        male 1.94


Males are more popular based on the aggreate function used to get the mean

aggregate(In ~ node.gender, data = nodes, sd)
node.gender   In
1      female 1.75
2        male 1.34

based on the standard deviation returned, we can determine that females have a greater variation and variability than
males

