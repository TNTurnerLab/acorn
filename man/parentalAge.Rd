\name{parentalAge}
\alias{parentalAge}
\title{Calculates characteristics of father's age and mother's age at birth and number of DNVs per individual from the parental age object}
\usage{
parentalAge(parentalAgeObject = NULL, modelType="linear", parent="both")
}
\arguments{
\item{parentalAgeObject}{a parental age object}
}
\description{
This function will calculate the correlation between father's and mother's age at birth and DNV counts per individual, the results of the linear model taking the form: lm(formula = dnm_counts ~ fatherAge+motherAge, data = parentalAgeObject) or the exponential model taking the form lm(log(dnm_counts)~fatherAge+motherAge, data=parentalAgeObject). Input required is output from the parentalAgeObject function in this package. Options are modelType of "linear" or "exponential" with the default being "linear" and the parent(s) for the analysis with the default being both and an option of father or mother, respectively.
}
\examples{
parentalAge(parentalAgeObject = NULL)
}
\value{
Returns the results of the linear or exponential model taking the form: lm(formula = dnm_counts ~ fatherAge + motherAge, data = parentalAgeObject) or lm(log(dnm_counts)~fatherAge+motherAge, data=parentalAgeObject), respectively. It also returns a plot of father's and mother's age at birth and DNV counts.
}
