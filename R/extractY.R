extractY <- function(DNVobject = NULL) {
if(is.null(DNVobject)){
    cat(paste("missing datasets"))
    } else {
    y <- DNVobject[which(DNVobject[,2] %in% c("chrY")),]
    y
    }
}
