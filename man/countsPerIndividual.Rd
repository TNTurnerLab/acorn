\name{countsPerIndividual}
\alias{countsPerIndividual}
\title{Calculates the counts of DNVs per individual in the DNV object}
\usage{
countsPerIndividual(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will count the DNVs from a DNV object originally generated using the readDNV function. You can also run this on objects generated from extractSNVs, extractINDELs, or extractMNVs.
}
\examples{
countsPerIndividual(DNVobject = NULL)
}
\value{
Returns the mean of the DNV counts per individual, the standard deviation of the DNV counts per individual, a plot of the density of the DNV counts per individual, and an object consisting of the sample name and the counts of their DNVs that can be assigned to another object.
}
