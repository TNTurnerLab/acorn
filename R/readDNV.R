readDNV <- function(DNVfile) {
    if(sapply(strsplit(as.character(DNVfile), "\\."), tail, 1) == "gz"){
        DNV <- read.delim(gzfile(DNVfile))
    } else {
        DNV <- read.delim(DNVfile)
    }
    DNV
}
