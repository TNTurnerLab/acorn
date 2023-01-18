extractX <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    cat(paste("missing datasets"))
    } else {
    x <- DNVobject[which(DNVobject[,2] %in% c("chrX")),]
    x
    }
}
