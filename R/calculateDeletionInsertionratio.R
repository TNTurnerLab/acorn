calculateDeletionInsertionratio <- function(x) {
    #deletions
    deletion <- x[which(nchar(as.character(x[,4])) > nchar(as.character(x[,5]))),]

    #insertions
    insertion <- x[which(nchar(as.character(x[,4])) < nchar(as.character(x[,5]))),]

    cat(paste("number of deletions", nrow(deletion), "\n"))
    cat(paste("number of insertions", nrow(insertion), "\n"))
    cat(paste("deletion/insertion ratio: ", nrow(deletion)/nrow(insertion), "\n"))
}
