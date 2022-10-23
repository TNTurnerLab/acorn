extractSNVs <- function(x) {
    snvs <- x[which(nchar(as.character(x[,4])) == 1 & nchar(as.character(x[,5])) == 1),]
    snvs
}
