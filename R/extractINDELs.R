extractINDELs <- function(DNVobject) {
    #deletions
    deletion <- DNVobject[which(nchar(as.character(DNVobject[,4])) > nchar(as.character(DNVobject[,5]))),]

    #insertions
    insertion <- DNVobject[which(nchar(as.character(DNVobject[,4])) < nchar(as.character(DNVobject[,5]))),]

    indel <- rbind(insertion, deletion)
    indel
}
