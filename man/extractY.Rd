\name{extractY}
\alias{extractY}
\title{Extract Y chromosome DNVs from any type of DNV object (full, SNVs, INDELs, MNVs)}
\usage{
extractY(DNVobject)
}
\description{
Extracts the Y chromosome DNVs out from a DNV object originally generated using the readDNV function. You can also run this on objects generated from extractSNVs, extractINDELs, or extractMNVs
}
\examples{
extractY(DNVobject)
}
\value{
Returns a DNV object containing only DNVs on the Y chromosome
}
