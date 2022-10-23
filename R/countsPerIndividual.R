countsPerIndividual <- function(x) {
    cat(paste("mean of the counts per individual:", "\n"))
    cat(mean(as.numeric(table(x[,1]))))
    cat("\n")

    cat(paste("standard deviation of the counts per individual:", "\n"))
    cat(sd(as.numeric(table(x[,1]))))
    cat("\n")

    cat(paste("Plot generating of the density of the DNV counts.", "\n"))
    plot(density(as.numeric(table(x[,1]))), xlab="DNV counts per individual", main="density of DNV counts per individual")

    countTable <- as.data.frame(table(x[,1]))
    colnames(countTable) <- c("sample", "dnv_count")
    countTable
}
