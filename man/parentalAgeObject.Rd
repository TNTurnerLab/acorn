\name{parentalAgeObject}
\alias{parentalAgeObject}
\title{Generate a parental age object for using in downstream analyses of DNVs and parental age}
\usage{
parentalAgeObject(counts = NULL, parentalData = NULL)
}
\arguments{
\item{counts}{DNV counts}

\item{parentalData}{a parental data object}
}
\description{
Takes in a counts object that is either the result of countsPerIndividual() or is already read into an object from a file that contains the following two fields: sample and number of DNVs. The parental age object should be read in and contain the following fields: sample, father age at child's birth, and mother age at child's birth.

Examples of these data files are found in "inst/extdata/dnm_count_example.txt" and "inst/extdata/parental_age_example.txt"
}
\examples{
parentalAgeObject(counts = NULL, parentalData = NULL)
}
\value{
Returns back a an object with the de novo counts and parental age data together. The fields in this file are sample, dnm_counts, fatherAge, and motherAge.
}
