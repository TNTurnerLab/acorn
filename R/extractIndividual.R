extractIndividual <- function(DNVobject = NULL, individual = NULL) {
if(is.null(DNVobject) | is.null(individual)){
    message("missing datasets")
    } else {

    ind <- DNVobject[which(DNVobject[,1] %in% individual),]
    ind
    }
}
