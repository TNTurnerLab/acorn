parentalAge <- function(parentalAgeObject) {
    plot(parentalAgeObject[,3], parentalAgeObject[,2], xlab="parent age at birth", ylab="DNV counts", col="steelblue1", pch=19, xlim=c(16,max(parentalAgeObject[,3])+5))
    points(parentalAgeObject[,4], parentalAgeObject[,2], col="orange1", pch=19)
    legend("bottomright", fill=c("steelblue1", "orange"), legend=c("father's age at birth", "mother's age at birth"), cex=0.6, border=c("steelblue1", "orange1"), box.col=FALSE)

    fitLinearAll <- lm(dnm_counts~fatherAge+motherAge, data=parentalAgeObject)
    pr.LinearAll <- predict(fitLinearAll)

    summary(fitLinearAll)

    confint(fitLinearAll)

    out <- list(cor.test(parentalAgeObject[,4], parentalAgeObject[,2]), summary(fitLinearAll), confint(fitLinearAll))
    attr(out, "names") <- c("summary of linear model for father's and mother's age at birth and DNV counts", "confidence interval of linear model for father's and mother's age at birth and DNV counts")
    return(out)
}
