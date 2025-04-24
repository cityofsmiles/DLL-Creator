# ---- line-graph2 ---- 

# Define the data
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
temperatures <- c(18, 20, 22, 21, 19, 24, 23)

# Create the line graph
plot(
  temperatures,
  type = "o",                # "o" for both lines and points
  xaxt = "n",                # Suppress default x-axis for custom labels
  xlab = "Day",
  ylab = "Temperature (°C)",
  main = "Temperature Over One Week",
  col = "blue",
  pch = 16,                  # Point character for data points
  lwd = 2                    # Line width
)

# Add custom x-axis labels for days of the week
axis(1, at = 1:7, labels = days)
