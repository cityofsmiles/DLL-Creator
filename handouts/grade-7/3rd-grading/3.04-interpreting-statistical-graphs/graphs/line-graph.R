# ---- line-graph ---- 
# Define the data
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
sales <- c(25, 30, 28, 35, 40, 50, 45)

# Create a line plot
plot(
  sales,
  type = "o",                  # "o" combines points and lines
  xaxt = "n",                   # Suppress x-axis for custom labels
  xlab = "Day",
  ylab = "Sales ($)",
  main = "Daily Sales",
  col = "blue",
  pch = 16,                     # Point character for data points
  lwd = 2                       # Line width
)

# Add custom x-axis labels
axis(1, at = 1:7, labels = days)
