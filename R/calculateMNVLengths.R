calculateMNVlengths <- function(x) {
    mnvs <- x[which(nchar(as.character(x[,4])) == nchar(as.character(x[,5]))),]
    mnvs <- mnvs[which(nchar(as.character(mnvs$Reference)) > 1),]

    mnvlengths <- nchar(as.character(mnvs[,4]))
    hist(mnvlengths, col="steelblue1", main=paste("MNV lengths (n=", length(mnvlengths), ")", sep=""), xlab="length of MNV", ylab="counts")

    mnvlengths
}
