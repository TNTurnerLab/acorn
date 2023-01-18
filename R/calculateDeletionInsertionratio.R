calculateDeletionInsertionratio <- function(DNVobject) {
    #deletions
    deletion <- DNVobject[which(nchar(as.character(DNVobject[,4])) > nchar(as.character(DNVobject[,5]))),]

    #insertions
    insertion <- DNVobject[which(nchar(as.character(DNVobject[,4])) < nchar(as.character(DNVobject[,5]))),]

    cat(paste("number of deletions", nrow(deletion), "\n"))
    cat(paste("number of insertions", nrow(insertion), "\n"))
    cat(paste("deletion/insertion ratio: ", nrow(deletion)/nrow(insertion), "\n"))
}
