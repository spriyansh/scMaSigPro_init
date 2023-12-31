% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sc.p.vector.R
\name{sc.p.vector}
\alias{sc.p.vector}
\title{Make regression fit for Binned Pseudotime. Adaption of maSigPro::p.vector()}
\usage{
sc.p.vector(
  scmpObj,
  Q = 0.05,
  MT.adjust = "BH",
  min.na = 6,
  family = negative.binomial(theta = 10),
  epsilon = 1e-08,
  verbose = TRUE,
  offset = TRUE,
  parallel = FALSE,
  logOffset = FALSE,
  max_it = 100
)
}
\arguments{
\item{scmpObj}{matrix containing normalized gene expression data. Genes must be in rows and arrays in columns.}

\item{Q}{significance level. Default is 0.05.}

\item{MT.adjust}{argument to pass to \code{p.adjust} function indicating the method for multiple testing adjustment of p.value.}

\item{min.na}{genes with less than this number of true numerical values will be excluded from the analysis.
Minimum value to estimate the model is (degree+1) x Groups + 1. Default is 6.}

\item{family}{the distribution function to be used in the glm model.
It must be specified as a function: \code{gaussian()}, \code{poisson()}, \code{negative.binomial(theta)}...
If NULL, the family will be \code{negative.binomial(theta)} when \code{counts = TRUE} or \code{gaussian()} when \code{counts = FALSE}.}

\item{epsilon}{argument to pass to \code{glm.control}, convergence tolerance in the iterative process to estimate the glm model.}

\item{verbose}{Name of the analyzed item to show on the screen while \code{T.fit} is in process.}

\item{offset}{Whether ro use offset for normalization}

\item{parallel}{Enable parallel processing}

\item{logOffset}{Take the log of teh offset. Similar to
'log(estimateSizeFactorsForMatrix)' from DESeq2.}

\item{max_it}{Integer giving the maximal number of IWLS iterations.}
}
\value{
scmp object
}
\description{
\code{sc.p.vector} performs a regression fit for each gene taking all variables
present in the model given by a regression matrix #' and returns a list of FDR corrected significant genes.
}
\details{
\code{rownames(design)} and \code{colnames(data)} must be identical vectors
  and indicate array naming. \code{rownames(data)} should contain unique gene IDs.
  \code{colnames(design)} are the given names for the variables in the regression model.
}
\references{
Conesa, A., Nueda M.J., Alberto Ferrer, A., Talon, T. 2006.
maSigPro: a Method to Identify Significant Differential Expression Profiles in Time-Course Microarray Experiments.
Bioinformatics 22, 1096-1102
}
\seealso{
\code{\link{T.fit}}, \code{\link{lm}}
}
\author{
Ana Conesa, Maria Jose Nueda and Priyansh Srivastava \email{spriyansh29@gmail.com}
}
\keyword{regression}
