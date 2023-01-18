extractMNVs <- function(DNVobject) {
    mnvs <- DNVobject[which(nchar(as.character(DNVobject[,4])) == nchar(as.character(DNVobject[,5]))),]
    mnvs <- mnvs[which(nchar(as.character(mnvs$Reference)) > 1),]

    mnvs
}
