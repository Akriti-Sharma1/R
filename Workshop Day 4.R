# Bring in the data set 
data <- read.csv("bdims.csv")

# Some descriptives
# 260 female, 247 men
table(data$sex)

# Create some subsets
male <- subset(data, data$sex== "1")
female <- subset(data, data$sex == "0")

# Create a freq histogram
hist(female$hgt)
# Create a density histogram
# Probability = True makes y-axis density
hist(female$hgt, probability = T, ylim = c(0,0.06))
# Draw a normal curve ontop of this histogram
fhgt_mean <- mean(female$hgt)
fhgt_sd <- sd(female$hgt)
# Define the max and min vals on x-axis
x <- 140:190
# Define the y-axis
y <- dnorm(x = x, mean = fhgt_mean, sd = fhgt_sd )
lines(x = x, y = y, col = "purple")

# A QQ Plot
qqnorm(female$hgt)
qqline(female$hgt)

qqnorm(female$age)
qqline(female$age)

# Try it on your own
fage_mean = mean(female$age)
fage_sd = sd(female$age)
summary(female$age)
x_age <- 15:70
y_age = dnorm(x = x_age, mean = fage_mean, sd = fage_sd)
hist(female$age, probability = "T")
lines(x = x_age, y = y_age, col = "green")

# Shapiro-Wilk Normality Test
# A value less than 0.05 is not normal and vice versa
shapiro.test(female$hgt)
shapiro.test(female$age)

# Transforming a data set to make it normal
female$age_norm <- 1/(female$age)
shapiro.test(female$age_norm)
qqnorm(female$age_norm)
qqline(female$age_norm)

# Likelihood of being less than 170
pnorm(q = 170, mean = fhgt_mean, sd = fhgt_sd)
1 - pnorm(q = 170, mean = fhgt_mean, sd = fhgt_sd)
