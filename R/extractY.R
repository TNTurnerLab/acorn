extractY <- function(DNVobject) {
    y <- DNVobject[which(DNVobject[,2] %in% c("chrY")),]
    y
}
