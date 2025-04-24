# ---- bar-graph2 ---- 

# Define the data
students <- c("Anna", "Ben", "Carol", "Daniel")
books_read <- c(5, 8, 7, 4)

# Create the bar graph
barplot(
  height = books_read,
  names.arg = students,
  col = "lightcoral",
  main = "Number of Books Read by Students in One Month",
  xlab = "Students",
  ylab = "Books Read",
  ylim = c(0, max(books_read) + 1)  # Add a little space above the highest bar
)
