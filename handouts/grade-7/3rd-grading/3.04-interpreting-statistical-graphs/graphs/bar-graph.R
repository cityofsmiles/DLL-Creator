# ---- bar-graph ---- 
#x1 <- runif(1000,1,2) 
#hist(x1,breaks=10)

# Define the data
students <- c("Emily", "Frank", "Grace", "Henry")
pets_owned <- c(3, 6, 5, 2)

# Create a barplot
barplot(
  pets_owned,
  names.arg = students,
  col = "skyblue",
  main = "Number of Pets Owned by Students",
  xlab = "Students",
  ylab = "Number of Pets",
  ylim = c(0, max(pets_owned) + 1)
)
