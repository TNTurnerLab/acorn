calculateInsertionLengths <- function(x) {
    #insertions
    insertion <- x[which(nchar(as.character(x[,4])) < nchar(as.character(x[,5]))),]

    insertionlengths <- nchar(as.character(insertion[,5]))
    hist(insertionlengths, col="steelblue1", main=paste("insertion lengths (n=", length(insertionlengths), ")", sep=""), xlab="length of insertion", ylab="counts")
    insertionlengths
}
