extractY <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    message("missing datasets")
    } else {
    y <- DNVobject[which(DNVobject[,2] %in% c("chrY")),]
    y
    }
}
