\name{extractINDELs}
\alias{extractINDELs}
\title{Extract INDELs from DNV object}
\usage{
extractINDELs(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
Extracts small insertions/deletions (INDELs) out from a DNV object generated using the readDNV function.
}
\examples{
extractINDELs(DNVobject = NULL)
}
\value{
Returns a DNV object containing only INDELs
}
