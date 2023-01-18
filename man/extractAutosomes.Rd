\name{extractAutosomes}
\alias{extractAutosomes}
\title{Extract Autosomes from any type of DNV object (full, SNVs, INDELs, MNVs)}
\usage{
extractAutosomes(DNVobject)
}
\arguments{
\item{DNVobject}{a DNVobject}
}
\description{
Extracts the autosomes (chromosomes 1 to 22) out from a DNV object originally generated using the readDNV function. You can also run this on objects generated from extractSNVs, extractINDELs, or extractMNVs
}
\examples{
extractAutosomes(DNVobject)
}
\value{
Returns a DNV object containing only DNVs on the autosomes
}
