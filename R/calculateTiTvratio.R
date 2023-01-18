calculateTiTvratio <- function(DNVobject) {
    DNVobject <- DNVobject[which(nchar(as.character(DNVobject[,4])) == 1 & nchar(as.character(DNVobject[,5])) == 1),]

    #identify the different types of changes
    ntchanges <- paste(DNVobject[,4], DNVobject[,5], sep=">")

    #transitions/transversions
    ti <- ntchanges[which(ntchanges %in% c("A>G", "C>T", "G>A", "T>C"))]
    tv <- ntchanges[which(ntchanges %in% c("A>C", "A>T", "C>A", "C>G", "G>C", "G>T", "T>A", "T>G"))]

    cat(paste("number of transitions (A>G, C>T, G>A, T>C): ", length(ti), "\n"))
    cat(paste("number of transversions (A>C, A>T, C>A, C>G, G>C, G>T, T>A, T>G: ", length(tv), "\n"))

    cat(paste("Ti/Tv ratio: ", length(ti)/length(tv), "\n"))

    cat(paste("Plot of different nucleotide changes: ", "\n", sep=""))
    barplot(table(ntchanges), col="steelblue1", main=paste("SNV changes (n=", length(ntchanges), ")", sep=""), xlab="reference > alternate", ylab="counts")
}
