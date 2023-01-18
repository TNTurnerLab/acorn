\name{extractIndividual}
\alias{extractIndividual}
\title{Extract individual, by id, from DNV object}
\usage{
extractIndividual(DNVobject = NULL, individual = NULL)
}
\arguments{
\item{DNVobject}{a DNVobject}

\item{individual}{an individual}
}
\description{
Extracts the DNVs out of a DNVobject from a particular individual.
}
\examples{
extractIndividual(DNVobject = NULL, individual = NULL)
}
\value{
Returns a DNV object containing only DNVs in the specified individual.
}
