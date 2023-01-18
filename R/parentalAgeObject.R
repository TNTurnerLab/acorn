parentalAgeObject <- function(counts = NULL, parentalData = NULL) {
if(is.null(counts) | is.null(parentalData)){
    cat(paste("missing datasets"))
    } else {

    colnames(counts) <- c("sample", "dnm_counts")
    colnames(parentalData) <- c("sample", "fatherAge", "motherAge")
    m <- merge(counts, parentalData, by="sample")
    m
    }
}
