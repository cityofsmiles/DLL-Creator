# ---- histogram ---- 

# Define the data
hours_intervals <- c("0-2", "3-5", "6-8", "9-11")
frequencies <- c(7, 10, 8, 5)

# Convert the intervals to numeric midpoints for plotting purposes
midpoints <- c(1, 4, 7, 10)

# Create the bar plot to approximate the histogram
barplot(
  height = frequencies,          # Corrected "height" parameter
  names.arg = hours_intervals,
  col = "lightblue",
  main = "Hours Spent on Homework by Students",
  xlab = "Hours Spent",
  ylab = "Number of Students",
  space = 0.2
)
