extractX <- function(DNVobject) {
    x <- DNVobject[which(DNVobject[,2] %in% c("chrX")),]
    x
}
