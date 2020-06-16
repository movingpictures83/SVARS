library(svars)

input <- function(inputfile) {
mydata <- read.csv(inputfile)
mydata <- mydata[,-1]
v1 <- vars::VAR(mydata, lag.max = 10, ic = "AIC" )
    x1 <<- id.dc(v1)
}

run <- function() {
    x2 <<- cf(x1, series = 2)
}

output <- function(outputfile) {
   write.csv(x2$actual, outputfile)
}
