
install.packages("dbscan")
library(dbscan)
library(datasets)
data <- iris[, -5]
db <- dbscan(data, eps = 0.5, minPts = 5)
iris$Cluster <- as.factor(db$cluster)
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Cluster)) + geom_point() + labs(title = "DBSCAN Clustering on Iris Dataset") + theme_minimal()
