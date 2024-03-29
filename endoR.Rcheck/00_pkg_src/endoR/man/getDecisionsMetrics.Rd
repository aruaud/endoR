% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDecisionsMetric.R
\name{getDecisionsMetrics}
\alias{getDecisionsMetrics}
\title{Measure the error, prediction and importance of decisions}
\usage{
getDecisionsMetrics(
  ruleExec,
  data,
  target,
  classPos = NULL,
  importances = TRUE,
  in_parallel = FALSE,
  n_cores = detectCores() - 1,
  cluster = NULL
)
}
\arguments{
\item{ruleExec}{a vector with name "condition" or a data.frame with a column "condition".}

\item{data}{data from which to get the decision support.}

\item{target}{response variable.}

\item{classPos}{for clssification tasks, the positive class to be predicted by decisions.}

\item{importances}{if FALSE, the importances are not calculated (importances = TRUE by default).}

\item{in_parallel}{if TRUE, the function is run in parallel.}

\item{n_cores}{if in_parallel = TRUE, and no cluster has been passed: number of cores to use.}

\item{cluster}{the cluster to use to run the function in parallel.}
}
\value{
a datatable with the rule (column "condition"), error ("err"), prediction ("pred") support, number of variables in the decision rule ("len"). Columns "gain" and "imp" wit hthe gain and importance of teh decision are added if importances were calculated.
}
\description{
This function measures the prediction and error on the response variable of each decision on its support in the data passed. The importance is calculated by default but this can be switched off.
}
