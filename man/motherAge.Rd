\name{motherAge}
\alias{motherAge}
\title{Calculates characteristics of father's age at birth and number of DNVs per individual from the parental age object}
\usage{
motherAge(parentalAgeObject)
}
\description{
This function will calculate the correlation between mother's age at birth and DNV counts per individual, the results of the linear model taking the form: lm(formula = dnm_counts ~ motherAge, data = parentalAgeObject). Input required is output from the parentalAgeObject function in this package.
}
\examples{
motherAge(parentalAgeObject)
}
\value{
Returns the correlation between mother's age at birth and DNV counts per individual and the results of the linear model taking the form: lm(formula = dnm_counts ~ motherAge, data = parentalAgeObject). It also returns a plot of mother's age at birth and DNV counts.
}
