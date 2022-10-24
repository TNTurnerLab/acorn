extractIndividual <- function(dnvObject, individual) {
    ind <- dnvObject[which(dnvObject[,1] == individual),]
    ind
}
