# ---- histogram2 ---- 

# Define the data
age_ranges <- c("10-15", "16-20", "21-25", "26-30")
frequencies <- c(5, 12, 8, 10)

# Create the bar plot to approximate the histogram
barplot(
  height = frequencies,
  names.arg = age_ranges,
  col = "lightblue",
  main = "Ages of Participants in Community Event",
  xlab = "Age Range",
  ylab = "Number of People",
  space = 0.2
)
