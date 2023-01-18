\name{readDNV}
\alias{readDNV}
\title{Read DNV File}
\usage{
readDNV(DNVfile)
}
\arguments{
\item{DNVfile}{a DNV file}
}
\description{
Reads in a de novo variant (DNV) file in the format of sample, chromosome, genomic position, reference allele, alternate allele, and then any optional columns. File must be tab-delimited and the file must have the data in the order listed above (i.e., sample is field 1, chromosome is field 2, genomic position is field 3, reference allele is field 4, and alternate allele is field 5. The file can either be a uncompressed file or can be a gz compressed file. Please note that the chromosome data should take the form with a "chr" at the beginning (e.g., chr1).
}
\examples{
readDNV("/path/to/directory/DNV_file.txt")
}
\value{
Returns back a loaded in version of the DNV file that can be assigned to an object.
}
