\name{calculateDeletionLengths}
\alias{calculateDeletionLengths}
\title{Calculates the length of the deletions in the DNV object}
\usage{
calculateDeletionLengths(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will automatically grab only the deletions from the DNV object for the calculation of the length of the deletions.
}
\examples{
calculateDeletionLengths(DNVobject = NULL)
}
\value{
Returns the length of the deletions, in the form of an object, observed in the DNV object. It also returns a barplot of the deletion lengths.
}
