\name{extractX}
\alias{extractX}
\title{Extract X chromosome DNVs from any type of DNV object (full, SNVs, INDELs, MNVs)}
\usage{
extractX(DNVobject = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
Extracts the X chromosome out from a DNV object originally generated using the readDNV function. You can also run this on objects generated from extractSNVs, extractINDELs, or extractMNVs
}
\examples{
extractX(DNVobject = NULL)
}
\value{
Returns a DNV object containing only DNVs on the X chromosome
}
