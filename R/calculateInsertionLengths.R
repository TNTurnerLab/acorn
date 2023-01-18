calculateInsertionLengths <- function(DNVobject) {
    #insertions
    insertion <- DNVobject[which(nchar(as.character(DNVobject[,4])) < nchar(as.character(DNVobject[,5]))),]

    insertionlengths <- nchar(as.character(insertion[,5]))
    hist(insertionlengths, col="steelblue1", main=paste("insertion lengths (n=", length(insertionlengths), ")", sep=""), xlab="length of insertion", ylab="counts")
    insertionlengths
}
