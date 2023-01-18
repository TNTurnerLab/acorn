\name{calculateDeletionInsertionratio}
\alias{calculateDeletionInsertionratio}
\title{Calculates the deletion/insertion ratio of INDELs in the DNV object}
\usage{
calculateDeletionInsertionratio(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
This function will automatically grab only the INDELs from the DNV object for the calculation of the deletion/insertion ratio.
}
\examples{
calculateDeletionInsertionratio(DNVobject = NULL)
}
\value{
Returns the counts of deletions, the counts of insertions, and the deletion/insertion ratio.
}
