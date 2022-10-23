annotateCpG <- function(dnvObject, CpGannotFile) {

    snvs <- dnvObject[which(nchar(as.character(dnvObject[,4])) == 1 & nchar(as.character(dnvObject[,5])) == 1),]
    snvs$matcher <- paste(snvs$CHROM, snvs$POS_B38, sep="_")

    load(CpGannotFile)
    cpg_b38$matcher1 <- paste(cpg_b38$V1, cpg_b38$V3, sep="_")
    cpg_b38$prepMatcher <- cpg_b38$V3-1
    cpg_b38$matcher2 <- paste(cpg_b38$V1, cpg_b38$prepMatcher, sep="_")

    cpg1 <- snvs[which(snvs$matcher %in% cpg_b38$matcher1),]
    cpg1$cpg <- "yes"

    cpg2 <- snvs[which(snvs$matcher %in% cpg_b38$matcher2),]
    cpg2$cpg <- "yes"

    cpg <- rbind(cpg1, cpg2)

    notcpg <- snvs[!(snvs$ID %in% cpg$ID),]
    notcpg$cpg <- "no"

    annotated <- rbind(cpg, notcpg)
    cat(paste("The number of DNVs at CpG sites is: ", nrow(cpg), "\n", sep=""))
    cat(paste("The total number of SNVs is: ", nrow(snvs), "\n", sep=""))
    cat(paste("The percent of DNV that are SNVs at CpG sites is: ", (nrow(cpg)/nrow(snvs))*100, "\n", sep=""))

    annotated
}
