% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merData.R
\name{wiggle}
\alias{wiggle}
\title{Assign an observation to different values}
\usage{
wiggle(data, var, values)
}
\arguments{
\item{data}{a data frame with one or more observations to be reassigned}

\item{var}{a character specifying the name of the variable to adjust}

\item{values}{a vector with the variables to assign to var}
}
\value{
a data frame with each row in data assigned to all values for
the variable chosen
}
\description{
Creates a new data.frame with copies of the original observation,
each assigned to a different user specified value of a variable. Allows the
user to look at the effect of changing a variable on predicted values.
}
\details{
If the variable specified is a factor, then wiggle will return it
as a character.
}
\examples{
data(iris)
wiggle(iris[3,], "Sepal.Width", values = c(1, 2, 3, 5))
wiggle(iris[3:5,], "Sepal.Width", values = c(1, 2, 3, 5))
}

