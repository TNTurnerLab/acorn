calculateDeletionLengths <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {
    #deletions
    deletion <- DNVobject[which(nchar(as.character(DNVobject[,4])) > nchar(as.character(DNVobject[,5]))),]

    #deletions
    deletionlengths <- nchar(as.character(deletion[,4]))
    hist(deletionlengths, col="steelblue1", main=paste("deletion lengths (n=", length(deletionlengths), ")", sep=""), xlab="length of deletion", ylab="counts")
    deletionlengths
    }
}
