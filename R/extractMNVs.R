extractMNVs <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {

    mnvs <- DNVobject[which(nchar(as.character(DNVobject[,4])) == nchar(as.character(DNVobject[,5]))),]
    mnvs <- mnvs[which(nchar(as.character(mnvs$Reference)) > 1),]

    mnvs
    }
}
