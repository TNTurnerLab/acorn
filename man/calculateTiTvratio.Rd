\name{calculateTiTvratio}
\alias{calculateTiTvratio}
\title{Calculates the transition/transversion ratio of SNVs in the DNV object}
\usage{
calculateTiTvratio(DNVobject)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will automatically grab only the SNVs from the DNV object for the calculation of the transition/transversion (Ti/Tv) ratio.
}
\examples{
calculateTiTvratio(DNVobject)
}
\value{
Returns the counts of transitions, the counts of transversions, the Ti/Tv ratio, and a barplot of the different types of SNV changes observed in the DNV object.
}
