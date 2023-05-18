calculateMNVLengths <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {

    mnvs <- extractMNVs(DNVobject)

    mnvlengths <- nchar(as.character(mnvs[,4]))
    hist(mnvlengths, col="steelblue1", main=paste("MNV lengths (n=", length(mnvlengths), ")", sep=""), xlab="length of MNV", ylab="counts")

    mnvlengths
    }
}
