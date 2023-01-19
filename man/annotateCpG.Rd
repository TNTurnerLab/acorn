\name{annotateCpG}
\alias{annotateCpG}
\title{Annotate the SNVs in the DNV dataset that reside at CpG sites}
\usage{
annotateCpG(DNVobject = NULL, CpGannot = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}

\item{CpGannot}{a CpG annotation file object}
}
\description{
Extracts single-nucleotide variants (SNVs) out from a DNV object generated using the readDNV function and assigns whether they are at a CpG site or not. This function also requires a pre-computed rda file for the CpG sites in the genome of interest. This is available for b38 of the human genome at: https://data.cyverse.org/dav-anon/iplant/home/tycheleturner/genomic_annotations/cpg_b38.rda. The user will want to load the file first and then use its object name to feed into this function in the CpGannot.
}
\examples{
annotateCpG(DNVobject = NULL, CpGannot = NULL)
}
\value{
Returns a DNV object containing only SNVs and includes a column with a note on whether the DNV is at a CpG or not. This function also prints out the number of CpG and the percent of DNV SNVs at CpG.
}
