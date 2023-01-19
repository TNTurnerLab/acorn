\name{calculateMNVLengths}
\alias{calculateMNVLengths}
\title{Calculates the length of the MNVs in the DNV object}
\usage{
calculateMNVLengths(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will automatically grab only the multi-nucleotide variants (MNVs) from the DNV object for the calculation of the length of the MNVs.
}
\examples{
calculateMNVLengths(DNVobject = NULL)
}
\value{
Returns the length of the MNVs, in the form of an object, observed in the DNV object. It also returns a barplot of the MNVs lengths.
}
