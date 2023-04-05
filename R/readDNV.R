readDNV <- function(DNVfile = NULL) {
if(is.null(DNVfile)){
    message("missing datasets")
    } else {

    if(sapply(strsplit(as.character(DNVfile), "\\."), tail, 1) == "gz"){
        DNV <- read.delim(gzfile(DNVfile))
    } else {
        DNV <- read.delim(DNVfile)
    }
    DNV
    }
}
