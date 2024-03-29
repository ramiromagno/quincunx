% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_xlsx.R
\name{write_xlsx}
\alias{write_xlsx}
\title{Export a PGS Catalog object to xlsx}
\usage{
write_xlsx(x, file = stop("`file` must be specified"))
}
\arguments{
\item{x}{A \linkS4class{scores}, \linkS4class{publications},
\linkS4class{traits}, \linkS4class{performance_metrics},
\linkS4class{sample_sets}, \linkS4class{cohorts},
\linkS4class{trait_categories} or \linkS4class{releases} object.}

\item{file}{A file name to write to.}
}
\value{
No return value, called for its side effect.
}
\description{
This function exports a PGS Catalog object to Microsoft Excel xlsx file. Each
table (slot) is saved in its own sheet.
}
