extractSNVs <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    cat(paste("missing datasets"))
    } else {
    snvs <- DNVobject[which(nchar(as.character(DNVobject[,4])) == 1 & nchar(as.character(DNVobject[,5])) == 1),]
    snvs
    }
}
