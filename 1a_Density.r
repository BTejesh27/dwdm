install.packages("dbscan")  # Only if not already installed
library(dbscan)
library(datasets)
data <- iris[, -5]
db <- dbscan(data, eps = 0.4, minPts = 5)
iris$Cluster <- as.factor(db$cluster)
print(table(iris$Cluster))
print(head(iris))
