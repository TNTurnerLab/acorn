calculateMNVLengths <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {

    mnvs <- DNVobject[which(nchar(as.character(DNVobject[,4])) == nchar(as.character(DNVobject[,5]))),]
    mnvs <- mnvs[which(nchar(as.character(mnvs$Reference)) > 1),]

    mnvlengths <- nchar(as.character(mnvs[,4]))
    hist(mnvlengths, col="steelblue1", main=paste("MNV lengths (n=", length(mnvlengths), ")", sep=""), xlab="length of MNV", ylab="counts")

    mnvlengths
    }
}
