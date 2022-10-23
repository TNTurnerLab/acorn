\name{parentalAge}
\alias{parentalAge}
\title{Calculates characteristics of father's age and mother's age at birth and number of DNVs per individual from the parental age object}
\usage{
parentalAge(parentalAgeObject)
}
\description{
This function will calculate the correlation between father's and mother's age at birth and DNV counts per individual, the results of the linear model taking the form: lm(formula = dnm_counts ~ fatherAge+motherAge, data = parentalAgeObject). Input required is output from the parentalAgeObject function in this package.
}
\examples{
parentalAge(parentalAgeObject)
}
\value{
Returns the results of the linear model taking the form: lm(formula = dnm_counts ~ fatherAge + motherAge, data = parentalAgeObject). It also returns a plot of father's and mother's age at birth and DNV counts.
}
