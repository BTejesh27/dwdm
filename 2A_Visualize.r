# Load iris dataset
data(iris)

# Histograms
hist(iris$Sepal.Length, main="Histogram of Sepal Length", xlab="Sepal Length", col="blue")
hist(iris$Sepal.Width, main="Histogram of Sepal Width", xlab="Sepal Width", col="green")

# Boxplots
boxplot(iris[,1:4], main="Boxplot of Iris Dataset Variables")

# Scatter Plots (Sepal.Length vs Sepal.Width)
plot(iris$Sepal.Length, iris$Sepal.Width, main="Scatter Plot of Sepal Length vs Sepal Width", 
     xlab="Sepal Length", ylab="Sepal Width", col=iris$Species)
legend("topright", legend=levels(iris$Species), col=1:3, pch=1)
