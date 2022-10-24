extractIndividual <- function(dnvObject, individual) {
    ind <- dnvObject[which(dnvObject[,1] %in% individual),]
    ind
}
