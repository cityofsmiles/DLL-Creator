# ---- pie-chart2 ---- 

# Define the data
activities <- c("Reading", "Sports", "Watching TV", "Others")
percentages <- c(40, 30, 20, 10)

# Create labels that include both the activity and the percentage
labels <- paste(activities, percentages, "%")

# Create the pie chart
pie(
  percentages,
  labels = labels,
  col = c("lightblue", "lightgreen", "yellow", "pink"),
  main = "How Students Spend Their Free Time"
)
