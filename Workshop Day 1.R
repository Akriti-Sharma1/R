# Command to view the data set
arbuthnot

#View the dimension of the dataset (rows x columns)
dim(arbuthnot)
# Display the name of the columns of the dataset
names(arbuthnot)
# Commands to view just the boys columns or add columns together
arbuthnot$Boys
arbuthnot$Boys + arbuthnot$Girls

#Let's Plot!
#xlab, ylab = x and y labels
plot(x = arbuthnot$Year, y = arbuthnot$Girls, xlab = "Year", ylab = "Girls Born")
#main = main title
plot(x = arbuthnot$Year, y = arbuthnot$Girls, type = "l", xlab = "Year", ylab = "Girls Born", main = "Chart")

plot(arbuthnot$year, arbuthnot$boys + arbuthnot$girls, type = "l")
