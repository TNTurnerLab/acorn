extractSNVs <- function(DNVobject) {
    snvs <- DNVobject[which(nchar(as.character(DNVobject[,4])) == 1 & nchar(as.character(DNVobject[,5])) == 1),]
    snvs
}
