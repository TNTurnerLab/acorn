calculateDeletionlengths <- function(x) {
    #deletions
    deletion <- x[which(nchar(as.character(x[,4])) > nchar(as.character(x[,5]))),]

    #deletions
    deletionlengths <- nchar(as.character(deletion[,4]))
    hist(deletionlengths, col="steelblue1", main=paste("deletion lengths (n=", length(deletionlengths), ")", sep=""), xlab="length of deletion", ylab="counts")
    deletionlengths
}
