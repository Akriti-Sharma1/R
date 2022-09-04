# Extract 2 variables
area <- ames$area
price <- ames$price

# Plot a histogram
summary(area)
hist(area)

# Unknown Sampling Distribution ----
# Takes 50 values from the data set
sampl <- sample(area, 50)
hist(sampl)

# Make a blank vector
sample_mean50 <- rep(NA, 5000)

# Make a for loop
for(i in 1:5000){
  # Making a sample by 50 of the areas every time and store them
  samp <- sample(area, 50)
  # Store that variable in our blank variable at that incremented index 
  sample_mean50[i] <- mean(samp)
}
hist(sample_mean50)
hist(sample_mean50, breaks = 25)

sample_mean10 = rep(NA, 10)
sample_mean100 = rep(NA, 100)
# Create a bigger sample size
for(i in 1:5000){
  samp <- sample(area, 10)
  sample_mean10[i] = mean(samp)
  samp <- sample(area, 100)
  sample_mean100 = mean(samp)
}

# Plot!
par(mfrow = c(3,1))

xlimits <- range(sample_mean10)

hist(sample_mean10, breaks = 20, xlim = xlimits)
hist(sample_mean50, breaks = 20, xlim = xlimits)
hist(sample_mean100, breaks = 20, xlim = xlimits)
