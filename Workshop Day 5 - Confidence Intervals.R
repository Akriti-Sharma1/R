# Create a few variables
population <- ames$Lot.Area
samp <- sample(population, 60)

# Find the mean (point estimate)
sample_mean <- mean(samp)

# Find the 95% confidence Interval
# Find the standard error
se <- sd(samp) / sqrt(60)
# Find the upper and lower bounds
lower <- sample_mean - 1.96 + se
upper <- sample_mean + 1.96 + se
# concatenate the variables
c(lower, upper)

# For every point estimate, you will get a different answer
samp_mean = rep(NA, 50)
samp_sd = rep(NA, 50)
n = 60

# For loop:
for(i in 1:50){
  # Get a sample of size n
  samp = sample(population, n)
  # Save the sample mean in its ith element
  samp_mean[i] = mean(samp)
  # save the sample sd in the ith spot
  samp_sd[i] = sd(samp)
}

# Construct the confidence interval
lower_vector = samp_mean - 1.96 + samp_sd / sqrt(n)
upper_vector = samp_mean + 1.96 + samp_sd/sqrt(n)
c(lower_vector[1], upper_vector[1])

# Make a data frame
df = data.frame(lower_vector, upper_vector)
print(df)

# Plot a histogram!
# Save the first histogram data
hgA <- hist(df$lower_vector, plot = FALSE)
# Save the second histogram data
hgB <- hist(df$upper_vector, plot = FALSE)

c1 <- rgb(173,216,230, max = 255, alpha = 80, names = "lt.blue")
c2 <- rgb(255, 192, 203, max = 255, alpha = 80, names = "lt.pink")

# Plot the first histogram using a transparent color
plot(hgA, col = c1, xlim = c(1200, 1850))
# Plot the second histogram using a different color
plot(hgB, col = c2, add = TRUE)
