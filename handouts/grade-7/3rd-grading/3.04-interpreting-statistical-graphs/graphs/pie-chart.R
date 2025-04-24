# ---- pie-chart ---- 
# Define the data
travel_modes <- c("Walking", "Biking", "Bus", "Carpool")
percentages <- c(25, 35, 30, 10)

# Create labels that include both the travel mode and the percentage
labels <- paste(travel_modes, percentages, "%")

# Create the pie chart
pie(
  percentages,
  labels = labels,
  col = c("lightblue", "lightgreen", "yellow", "pink"),
  main = "Students' Preferred Travel Modes to School"
)
