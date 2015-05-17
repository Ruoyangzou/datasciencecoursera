corr <- function(directory, threshold = 0) {
    alldir <- dir(directory)
    result <- c()
    for(i in alldir) {
        data <- read.csv(file.path(directory, i))
        cdata <- complete.cases(data)
        allcdata <- sum(cdata)
        gooddata <- na.omit(data)
        if(allcdata > threshold){
            output <- cor(gooddata[['sulfate']], gooddata[['nitrate']] )
            result <- c(result, output)
        }
    }
        print(result)
}