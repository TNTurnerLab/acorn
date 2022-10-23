\name{fatherAge}
\alias{fatherAge}
\title{Calculates characteristics of father's age at birth and number of DNVs per individual from the parental age object}
\usage{
fatherAge(parentalAgeObject)
}
\description{
This function will calculate the correlation between father's age at birth and DNV counts per individual, the results of the linear model taking the form: lm(formula = dnm_counts ~ fatherAge, data = parentalAgeObject). Input required is output from the parentalAgeObject function in this package.
}
\examples{
fatherAge(parentalAgeObject)
}
\value{
Returns the correlation between father's age at birth and DNV counts per individual and the results of the linear model taking the form: lm(formula = dnm_counts ~ fatherAge, data = parentalAgeObject). It also returns a plot of father's age at birth and DNV counts.
}
