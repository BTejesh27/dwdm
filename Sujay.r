1) # Create the data frame
emp_data <- data.frame(
  EMP_ID = c(1, 2, 3, 4, 5),
  EMP_NAME = c("Satish", "Vani", "Ramesh", "Praveen", "Pallavi"),
  SALARY = c(5000, 7500, 10000, 9500, 4500),
  START_DATE = as.Date(c("2013-11-01", "2011-06-05", "1999-09-21", "2005-09-13", "2000-10-23"), format="%Y-%m-%d")
)
a) emp_data[c("EMP_ID", "EMP_NAME")]
b) emp_data[1:2, ]
c) emp_data[c(3, 5), c("EMP_NAME", "START_DATE")]

1B)# Create two matrices with the same columns but different rows
matrix1 <- matrix(1:6, nrow=2, ncol=3)
matrix2 <- matrix(7:12, nrow=2, ncol=3)

# Concatenate by rows
concatenated_matrix <- rbind(matrix1, matrix2)
print(concatenated_matrix)




2A) # Calculate Mean, Median, Range for the SALARY column
mean_salary <- mean(emp_data$SALARY)
median_salary <- median(emp_data$SALARY)
range_salary <- range(emp_data$SALARY)
# Define mode function
get_mode <- function(v) {
  unique_values <- unique(v)
  unique_values[which.max(tabulate(match(v, unique_values)))]
}

mode_salary <- get_mode(emp_data$SALARY)

cat("Mean:", mean_salary, "\n")
cat("Median:", median_salary, "\n")
cat("Range:", range_salary, "\n")
cat("Mode:", mode_salary, "\n")




2B) 
# Write the data frame to a file
write.csv(emp_data, "emp_data.csv", row.names = FALSE)

# Read and display the file content
emp_data_from_file <- read.csv("emp_data.csv")
print(emp_data_from_file)


3A) 

# Initial data frame with 10 observations and 3 variables
df <- data.frame(
  ID = 1:10,
  Name = paste("Name", 1:10),
  Score = sample(50:100, 10, replace = TRUE)
)

# Display the initial data frame
print("Initial Data Frame:")
print(df)
# Create a new row to add
new_row <- data.frame(ID = 11, Name = "Name 11", Score = 85)

# Add the new row using rbind
df <- rbind(df, new_row)

# Display the data frame after adding the new row
print("Data Frame after adding a new row:")
print(df)
# Create a new column (vector) to add
Grade <- c("A", "B", "A", "C", "B", "A", "C", "B", "A", "C", "B")

# Add the new column using cbind
df <- cbind(df, Grade)

# Display the data frame after adding the new column
print("Data Frame after adding a new column:")
print(df)


3b) 
# Part A: Creating Data Frame and Adding Rows and Columns
df <- data.frame(
  ID = 1:10,
  Name = paste("Name", 1:10),
  Score = sample(50:100, 10, replace = TRUE)
)
print("Initial Data Frame:")
print(df)

new_row <- data.frame(ID = 11, Name = "Name 11", Score = 85)
df <- rbind(df, new_row)
print("Data Frame after adding a new row:")
print(df)

Grade <- c("A", "B", "A", "C", "B", "A", "C", "B", "A", "C", "B")
df <- cbind(df, Grade)
print("Data Frame after adding a new column:")
print(df)

# Part B: Create Data Frame from Vectors, Display Duplicates, and Show Unique Rows
vec1 <- c(1, 2, 3, 4, 5, 3, 4, 5, 6, 7)
vec2 <- c("A", "B", "C", "A", "B", "C", "A", "B", "C", "A")
df_vec <- data.frame(Vec1 = vec1, Vec2 = vec2)
print("Data Frame created from two vectors:")
print(df_vec)

duplicates <- df_vec[duplicated(df_vec), ]
print("Duplicated elements in the data frame:")
print(duplicates)

unique_rows <- unique(df_vec)
print("Unique rows in the data frame:")
print(unique_rows)
