% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create.scmp.R
\name{create.scmp}
\alias{create.scmp}
\title{Create scmp Object}
\usage{
create.scmp(
  counts,
  cell_data,
  feature_data,
  bin_counts = NULL,
  bin_cell_data = NULL,
  pseudotime_colname,
  path_colname,
  use_as_bin = FALSE
)
}
\arguments{
\item{counts}{A matrix containing the raw expression counts.}

\item{cell_data}{A data frame containing the cell metadata.}

\item{feature_data}{A data frame containing the feature level metadata.}

\item{bin_counts}{A matrix containing the binned counts.}

\item{bin_cell_data}{A data frame containing the binned cell level metadata.}

\item{pseudotime_colname}{A character string specifying the column name for
Pseudotime in the cell level metadata.}

\item{path_colname}{A character string specifying the column name for the
path in the cell level metadata.}

\item{use_as_bin}{A logical indicating whether to use the raw counts and
cell level data as binned. Defaults to FALSE.}
}
\value{
A scmp object containing the inputted counts, cell data, and additional parameters.
}
\description{
`create.scmp()` initializes a scmp object with the given counts,
cell level metadata, and other optional parameters.
}
