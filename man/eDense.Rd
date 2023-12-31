% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scmpGenerics.R
\name{eDense}
\alias{eDense}
\title{eDense value of an object}
\usage{
eDense(object, value = "missing")
}
\arguments{
\item{object}{The object to be accessed or modified.}

\item{value}{The value to be set for eSparse, if it's a setter.}
}
\value{
The eSparse value of the object if it's a getter.
}
\description{
`eDense` is a generic function that can act as both a getter and a setter for the eSparse value of an object.
The setter functionality is not implemented for all object types.
}
