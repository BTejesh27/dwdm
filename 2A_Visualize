data <- iris
par(mfrow = c(2, 2))
hist(data$Sepal.Length, main = "Sepal Length", xlab = "Sepal Length", col = "lightblue")
hist(data$Sepal.Width, main = "Sepal Width", xlab = "Sepal Width", col = "lightgreen")
hist(data$Petal.Length, main = "Petal Length", xlab = "Petal Length", col = "lightpink")
hist(data$Petal.Width, main = "Petal Width", xlab = "Petal Width", col = "lightyellow")

par(mfrow = c(1, 4))
boxplot(data$Sepal.Length, main = "Sepal Length", col = "lightblue")
boxplot(data$Sepal.Width, main = "Sepal Width", col = "lightgreen")
boxplot(data$Petal.Length, main = "Petal Length", col = "lightpink")
boxplot(data$Petal.Width, main = "Petal Width", col = "lightyellow")

pairs(data[, 1:4], main = "Scatterplot Matrix")
