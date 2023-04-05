countsPerIndividual <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {

    message("mean of the counts per individual:", "\n")
    message(mean(as.numeric(table(DNVobject[,1]))))
    message("\n")

    message("standard deviation of the counts per individual:", "\n")
    message(sd(as.numeric(table(DNVobject[,1]))))
    message("\n")

    message("Plot generating of the density of the DNV counts.", "\n")
    plot(density(as.numeric(table(DNVobject[,1]))), xlab="DNV counts per individual", main="density of DNV counts per individual")

    countTable <- as.data.frame(table(DNVobject[,1]))
    colnames(countTable) <- c("sample", "dnv_count")
    countTable

    }
}
