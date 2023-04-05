calculateDeletionInsertionRatio <- function(DNVobject = NULL) {

if(is.null(DNVobject)){
    message("missing datasets")
    } else {
    #deletions
    deletion <- DNVobject[which(nchar(as.character(DNVobject[,4])) > nchar(as.character(DNVobject[,5]))),]

    #insertions
    insertion <- DNVobject[which(nchar(as.character(DNVobject[,4])) < nchar(as.character(DNVobject[,5]))),]

    message("number of deletions: ", nrow(deletion), "\n")
    message("number of insertions: ", nrow(insertion), "\n")
    message("deletion/insertion ratio: ", nrow(deletion)/nrow(insertion), "\n")
    }
}
