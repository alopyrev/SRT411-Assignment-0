wgraph <- read.csv("graph.csv", sep=",", head=TRUE)

ipdst <- wgraph$ip.dst

proto <- wgraph$ip.proto

stripchart(wgraph$ip.src,method="stack")