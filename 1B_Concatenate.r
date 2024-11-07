factor1 <- factor(c("A", "B", "C"))
factor2 <- factor(c("D", "E", "F"))
combined_factor <- factor(c(as.character(factor1), as.character(factor2)))
print(combined_factor)
