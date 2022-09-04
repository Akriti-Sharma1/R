# Import a file using code
cdc <- read.csv("cdc.csv")

# Find the names of the variables
names(cdc) 
# excerany -> participant has exercise?
# Look at the first few rows
head(cdc)
tail(cdc)

# Function to find the statistics for a specific variable
summary(cdc$height)
mean(cdc$height)
sd(cdc$height)
# Average Sample height is 67.18 inches with a std of 4.13 inches

# Function to see people in the categories
table(cdc$genhlth)
# 3.3% of participants rated their health as poor
table(cdc$exerany)

# Let's Plot a Frequency graph
# Nest a function
barplot(table(cdc$genhlth))
# OR...
#Name the table function
genhlth_freq <- table(cdc$genhlth)
barplot(genhlth_freq, xlab="test")

# Compare 2 different variables
table(cdc$smoke100,cdc$gender)

# Plot this:
mosaicplot(table(cdc$smoke100,cdc$gender))

# Subsetting----
# Create a dataset with just male participants
cdc_male <- subset(cdc,gender=="m")
table(cdc_male$gender)
# AND and OR:
cdc_male_30 <- subset(cdc, gender == "m" & age > 30)
table(cdc_male_30$gender)
cdc_male_or_30 <- subset(cdc, gender == "m" | age > 30)
table(cdc_male_or_30$gender)

# Plot a histogram:
hist(cdc$height)

# Plot a boxplot:
boxplot(cdc$height)

# Download a data frame
write.csv(cdc_male, "cdc_male.csv")
