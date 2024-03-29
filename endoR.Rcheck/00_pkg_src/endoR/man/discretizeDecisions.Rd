% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discretizeDecisions.R
\name{discretizeDecisions}
\alias{discretizeDecisions}
\title{Discretize numerical variables in decision ensemble}
\usage{
discretizeDecisions(
  rules,
  data = NULL,
  target,
  mode = "data",
  K = 2,
  splitV = NULL,
  classPos = NULL,
  in_parallel = FALSE,
  n_cores = detectCores() - 1,
  cluster = NULL
)
}
\arguments{
\item{rules}{a data frame with a column "condition".}

\item{data}{data to discretize.}

\item{target}{response variable.}

\item{mode}{whether to discretize variables based on the data distribution (default, mode = 'data') or on the data splits in the model (mode = 'model').}

\item{K}{numeric, number of categories to create from numeric variables (default: K = 2).}

\item{splitV}{instead of running internally discretizeData, one can provide a list with, for each variable to discretize in rules, the thresholds delimiting each new category.}

\item{classPos}{for classification, the positive class.}

\item{in_parallel}{if TRUE, the function is run in parallel.}

\item{n_cores}{if in_parallel = TRUE, and no cluster has been passed: number of cores to use, default is detectCores() - 1.}

\item{cluster}{the cluster to use to run the function in parallel.

 @return Decision ensemble with discretized variables in the condition. Decisions with the same condition are aggregated: their importances are summed, and all other metrics are averaged.

 @export}

\item{data_ctg}{discretized data, if splitV is passed. Necessary to re-compute the metrics (if column 'err' in rules).}

\item{return_data}{if TRUE, discretized data are also returned.}
}
\description{
This function replaces in a decision ensemble the boundaries of numerical features by their corresponding levels when the variable is discretized.
If discretized data are not passed, data are first discretized into Kmax categories based on their quantiles (see discretizeData). 
The error, prediction, importance and multiplicity of decisions are updated after discretization.
}
