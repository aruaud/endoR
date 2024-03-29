% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discretizeData.R
\name{discretizeData}
\alias{discretizeData}
\title{Discretize numerical variables in a dataset}
\usage{
discretizeData(
  data,
  K = 2,
  features = NULL,
  knames = NULL,
  return_split = FALSE
)
}
\arguments{
\item{data}{data to discretize.}

\item{K}{numeric, number of categories (default: K = 2).}

\item{features}{vector with variables names or column numbers to discretize. If NULL (default), then all numeric variables are discretized.}

\item{knames}{optional: character vector of the same length than K, containing the ordered names for categories.}

\item{return_split}{if TRUE, then the table with thresholds used to discretize data is also returned.}
}
\value{
Data with discretized variables.
}
\description{
This function discretizes all numerical variables, or only the ones passed in features, into K categories based on their quantiles.
Names of categories can optionally be given in knames.
}
