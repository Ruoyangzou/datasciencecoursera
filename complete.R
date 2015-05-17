complete <- function(directory, id = 1: 332) {
    alldir <- dir(directory)
    usedir <- alldir[id]
    nobs <- c()
    for (i in usedir) {
        data <- read.csv(file.path(directory, i))
        cdata <- complete.cases(data)
        allcdata <- sum(cdata)
        nobs <- c(nobs, allcdata)
    }
    result <- data.frame(cbind(id, nobs))
    print(result)
}