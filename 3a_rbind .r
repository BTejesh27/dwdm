df <- data.frame(Var1 = rnorm(10), Var2 = runif(10), Var3 = sample(1:10, 10, replace = TRUE))
df <- rbind(df, data.frame(Var1 = 0.5, Var2 = 0.8, Var3 = 5))
df <- cbind(df, New_Var = c(rep(1, 10), 2))
print(df)
