extractINDELs <- function(x) {
    #deletions
    deletion <- x[which(nchar(as.character(x[,4])) > nchar(as.character(x[,5]))),]

    #insertions
    insertion <- x[which(nchar(as.character(x[,4])) < nchar(as.character(x[,5]))),]

    indel <- rbind(insertion, deletion)
    indel
}
