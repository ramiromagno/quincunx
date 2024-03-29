% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R
\name{subset-sample_sets}
\alias{subset-sample_sets}
\alias{[,sample_sets,missing,missing,missing-method}
\alias{[,sample_sets,numeric,missing,missing-method}
\alias{[,sample_sets,character,missing,missing-method}
\title{Subset a sample_sets object}
\usage{
\S4method{[}{sample_sets,missing,missing,missing}(x, i, j, ..., drop = FALSE)

\S4method{[}{sample_sets,numeric,missing,missing}(x, i, j, ..., drop = FALSE)

\S4method{[}{sample_sets,character,missing,missing}(x, i, j, ..., drop = FALSE)
}
\arguments{
\item{x}{A \linkS4class{sample_sets} object.}

\item{i}{Position of the identifier or the name of the identifier itself.}

\item{j}{Not used.}

\item{...}{Additional arguments not used here.}

\item{drop}{Not used.}
}
\value{
A \linkS4class{sample_sets} object.
}
\description{
You can subset \linkS4class{sample_sets} by identifier or by position using
the \code{`[`} operator.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Get a few sample sets:
my_pss <- get_sample_sets(sprintf('PSS\%06d', 42:48))

#
# Subsetting by position
#
my_pss[c(1, 3)]

#
# Subsetting by sample set identifier (character)
#
my_pss['PSS000042']
\dontshow{\}) # examplesIf}
}
\keyword{internal}
