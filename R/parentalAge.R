parentalAge <- function(parentalAgeObject = NULL, modelType="linear", parent="both") {
if(is.null(parentalAgeObject)){
    message("missing datasets")
    } else {
        
        if(parent == "both"){
            plot(parentalAgeObject[,3], parentalAgeObject[,2], xlab="parent age at birth", ylab="DNV counts", col="steelblue1", pch=19, xlim=c(16,max(parentalAgeObject[,3])+5))
            points(parentalAgeObject[,4], parentalAgeObject[,2], col="orange1", pch=19)
            legend("topleft", fill=c("steelblue1", "orange"), legend=c("father's age at birth", "mother's age at birth"), cex=0.6, border=c("steelblue1", "orange1"), box.col=FALSE)
            
            if(modelType=="linear"){
                fitModel <- lm(dnm_counts~fatherAge+motherAge, data=parentalAgeObject)
                }
            
            if(modelType=="exponential"){
                fitModel <- lm(log(dnm_counts)~fatherAge+motherAge, data=parentalAgeObject)
                }
            
            summary(fitModel)
            confint(fitModel)
            
            out <- list(summary(fitModel), confint(fitModel))
            attr(out, "names") <- c("summary of specified model type for father's and mother's age at birth and DNV counts (default model type is linear)", "confidence interval for specified model type for father's and mother's age at birth and DNV counts (default model type is linear)")
            return(out)
        }
        
        if(parent == "father"){
            plot(parentalAgeObject[,3], parentalAgeObject[,2], xlab="parent age at birth", ylab="DNV counts", col="steelblue1", pch=19, xlim=c(16,max(parentalAgeObject[,3])+5))
            legend("topleft", fill=c("steelblue1"), legend=c("father's age at birth"), cex=0.6, border=c("steelblue1"), box.col=FALSE)
            
            if(modelType=="linear"){
                fitModel <- lm(dnm_counts~fatherAge, data=parentalAgeObject)
                }
            
            if(modelType=="exponential"){
                fitModel <- lm(log(dnm_counts)~fatherAge, data=parentalAgeObject)
                }
            
            summary(fitModel)
            confint(fitModel)
            
            out <- list(summary(fitModel), confint(fitModel))
            attr(out, "names") <- c("summary of specified model type for father's and mother's age at birth and DNV counts (default model type is linear)", "confidence interval for specified model type for father's and mother's age at birth and DNV counts (default model type is linear)")
            return(out)
        }
        
        if(parent == "mother"){
            plot(parentalAgeObject[,4], parentalAgeObject[,2], xlab="parent age at birth", ylab="DNV counts", col="orange1", pch=19, xlim=c(16,max(parentalAgeObject[,4])+5))
            legend("topleft", fill=c("orange"), legend=c("mother's age at birth"), cex=0.6, border=c("orange1"), box.col=FALSE)
            
            if(modelType=="linear"){
                fitModel <- lm(dnm_counts~motherAge, data=parentalAgeObject)
                }
            
            if(modelType=="exponential"){
                fitModel <- lm(log(dnm_counts)~motherAge, data=parentalAgeObject)
                }
            
            summary(fitModel)
            confint(fitModel)
            
            out <- list(summary(fitModel), confint(fitModel))
            attr(out, "names") <- c("summary of specified model type for father's and mother's age at birth and DNV counts (default model type is linear)", "confidence interval for specified model type for father's and mother's age at birth and DNV counts (default model type is linear)")
            return(out)
        }
    }
}
