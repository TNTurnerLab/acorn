extractIndividual <- function(DNVobject, individual) {
    ind <- DNVobject[which(DNVobject[,1] %in% individual),]
    ind
}
