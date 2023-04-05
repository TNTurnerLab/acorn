extractINDELs <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {

    #deletions
    deletion <- DNVobject[which(nchar(as.character(DNVobject[,4])) > nchar(as.character(DNVobject[,5]))),]

    #insertions
    insertion <- DNVobject[which(nchar(as.character(DNVobject[,4])) < nchar(as.character(DNVobject[,5]))),]

    indel <- rbind(insertion, deletion)
    indel
    }
}
