\name{annotateCpG}
\alias{annotateCpG}
\title{Annotate the SNVs in the DNV dataset that reside at CpG sites}
\usage{
annotateCpG(DNVobject = NULL, CpGannotFile = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}

\item{CpGannotFile}{a CpG annotation file}
}
\description{
Extracts single-nucleotide variants (SNVs) out from a DNV object generated using the readDNV function and assigns whether they are at a CpG site or not. This function also requires a pre-computed rda file for the CpG sites in the genome of interest. This is available for b38 of the human genome at: .
}
\examples{
annotateCpG(DNVobject = NULL, CpGannotFile = NULL)
}
\value{
Returns a DNV object containing only SNVs and includes a column with a note on whether the DNV is at a CpG or not. This function also prints out the number of CpG and the percent of DNV SNVs at CpG.
}
