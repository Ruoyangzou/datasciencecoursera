pollutantmean <- function (directory, pollutant, id = 1:332) {
    alldir <- dir(directory)
    usedir <- alldir[id]
    allsum <- c()
    allcount <- c()
    for (i in usedir) {
        data <- read.csv(file.path(directory, i))
        NAdata <- is.na(data[[pollutant]])
        gooddata <- data[[pollutant]][!NAdata]
        ngooddata <- length(gooddata)
        sgooddata <- sum(gooddata)
        allsum <- c(allsum, sgooddata)
        allcount <- c(allcount, ngooddata)
    }
    x <- sum(allsum)
    y <- sum(allcount)
    result <- x / y
    print(result)
}