% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_functions.R
\name{showSigProf}
\alias{showSigProf}
\title{Show or Return the Solution}
\usage{
showSigProf(scmpObj, view = FALSE, return = TRUE, includeInflu = FALSE)
}
\arguments{
\item{scmpObj}{an object of class 'scmp'. This object should contain the computed solution.}

\item{view}{logical, whether to view the solution. If TRUE (default), the solution is displayed.}

\item{return}{logical, whether to return the solution. If FALSE (default), the solution is not returned.}

\item{includeInflu}{logical, whether to add gene with influential data in the solution.}
}
\value{
The computed solution as a data.frame if return is set to TRUE.
If return is FALSE, the function does not return anything.
}
\description{
This function is used to view or return the solution of the provided scMaSigPro object.
}
