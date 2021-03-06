% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_cumulative.R
\name{bin_cumulative}
\alias{bin_cumulative}
\title{binomial cumulative}
\usage{
bin_cumulative(trials, prob)
}
\arguments{
\item{trials}{numeric}

\item{prob}{numeric}
}
\value{
calculated result
}
\description{
compute the binomial cumulative distribution
}
\examples{
bin_cumulative(trials = 5, prob = 0.5)

dis2 <- bin_cumulative(trials = 5, prob = 0.5)
plot(dis2)
}
