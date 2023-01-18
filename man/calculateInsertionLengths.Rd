\name{calculateInsertionLengths}
\alias{calculateInsertionLengths}
\title{Calculates the length of the insertions the DNV object}
\usage{
calculateInsertionLengths(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will automatically grab only the insertions from the DNV object for the calculation of the length of the insertions.
}
\examples{
calculateInsertionLengths(DNVobject = NULL)
}
\value{
Returns the length of the insertions, in the form of an object, observed in the DNV object. It also returns a barplot of the insertion lengths.
}
