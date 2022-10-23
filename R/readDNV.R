readDNV <- function(x) {
    if(sapply(strsplit(as.character("~/Documents/Rpackages/acorn/inst/extdata/full_denovo_callset_sorted.txt.gz"), "\\."), tail, 1) == "gz"){
        DNV <- read.delim(gzfile(x))
    } else {
        DNV <- read.delim(x)
    }
    DNV
}
