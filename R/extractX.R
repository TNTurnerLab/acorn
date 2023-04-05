extractX <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {
    x <- DNVobject[which(DNVobject[,2] %in% c("chrX")),]
    x
    }
}
