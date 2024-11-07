#install.packages("dbscan") if not installed

library(datasets)
library(dbscan)

data <- iris[, -5]

clustering <- dbscan(data, eps = 0.5, minPts = 5)

iris$cluster <- clustering$cluster

print(iris)
