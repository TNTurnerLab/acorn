parentalAgeObject <- function(counts, parentalData) {
    colnames(counts) <- c("sample", "dnm_counts")
    colnames(parentalData) <- c("sample", "fatherAge", "motherAge")
    m <- merge(counts, parentalData, by="sample")
    m
}
