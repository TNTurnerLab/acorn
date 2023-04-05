motherAge <- function(parentalAgeObject = NULL) {
if(is.null(parentalAgeObject)){
    message("missing datasets")
    } else {
    plot(parentalAgeObject[,4], parentalAgeObject[,2], xlab="mother's age at birth", ylab="DNV counts")

    cor.test(parentalAgeObject[,4], parentalAgeObject[,2])

    fitLinearAll <- lm(dnm_counts~motherAge, data=parentalAgeObject)
    pr.LinearAll <- predict(fitLinearAll)

    summary(fitLinearAll)

    confint(fitLinearAll)

    out <- list(cor.test(parentalAgeObject[,4], parentalAgeObject[,2]), summary(fitLinearAll), confint(fitLinearAll))
    attr(out, "names") <- c("correlation of mother's age at birth and DNV counts", "summary of linear model for mother's age at birth and DNV counts", "confidence interval of linear model for mother's age at birth and DNV counts")
    return(out)
    }
}
