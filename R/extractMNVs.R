extractMNVs <- function(x) {
    mnvs <- x[which(nchar(as.character(x[,4])) == nchar(as.character(x[,5]))),]
    mnvs <- mnvs[which(nchar(as.character(mnvs$Reference)) > 1),]

    mnvs
}
