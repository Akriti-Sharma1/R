# Let's Load in our data
download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)

# Check the first 9 shots 
kobe$basket[1:9]

# Make a subset of data
kobe_game1 <- subset(kobe, game == 1)
#max(which(kobe$game == 1)

# Calculate the length of the streaks:
# View the calc_streaks function
kobe_streak <- calc_streak(kobe$basket)
table(kobe_streak) # Creates a table for all the streaks

# Let's Plot the data:
barplot(table(kobe_streak))
barplot(kobe_streak)

# Add titles to the graph
# ylim limits the axis (the c function is concatonate)
barplot(table(kobe_streak), main = "Kobe Streak Count", xlab = "Streak Length (First miss ends streak", ylab = "Number of streaks", ylim = c(0,40))

# Simulations ----
# Create a variable
outcomes <- c ("heads", "tails")
# Draw a random variable and then put back in
sample(outcomes, size = 1, replace = TRUE)

# Simulate a fair coin:
# size = the number of draws
sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
# Make a table to see how many
table(sim_fair_coin)

# Simulate an unfair coin
# prob = 0.2, 0.8 means heads is 0.2 and tails is 0.8
sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))

# Simulate the Independent Shooter
kobe_outcomes <- c("H", "M")
sim_basket <- sample(kobe_outcomes, size = 100, replace = TRUE)

# Create a blank vector (repetition)
# Can use NoN instead of 0
rep(0, length(kobe$basket))

#Example Function
#temp <- function(temp){
  ####
#}
# Call the function
#temp()



# OF Questions
# Line 4 of calc_streak
#max(which(kobe$game == 1)
# Full-length codes??



    