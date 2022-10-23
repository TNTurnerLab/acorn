extractX <- function(x) {
    autosomes <- x[which(x[,2] %in% c("chrX")),]
    autosomes
}
