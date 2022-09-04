# Intro into the Inference Function
# Create a subset for the United States
us12 <- subset(atheism, nationality == "United States" & year == "2012")

# Find the proportion of atheists in the US
# Sum function adds up all the TRUEs that exist in the dataframe
sum(us12$response == "atheist") / length(us12$response)

# Inference function
# View video for the explanation of each parameter
inference(us12$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

# Resources
# GeeksForGeeks, RPubs
