% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scoreModel.R
\name{scoreModel}
\alias{scoreModel}
\alias{scoreModel.default}
\alias{scoreModel.lm}
\alias{scoreModel.rxDTree}
\alias{scoreModel.rxGlm}
\alias{scoreModel.rxLinMod}
\alias{scoreModel.rxLogit}
\title{Score function}
\usage{
scoreModel(mod.obj, new.data, score.field = "Score", ...)

\method{scoreModel}{default}(mod.obj, new.data, score.field = "Score",
  os.value = NULL, os.pct = NULL, ...)

\method{scoreModel}{lm}(mod.obj, new.data, score.field = "Score",
  pred.int = FALSE, int.vals = NULL, log.y = FALSE, ...)

\method{scoreModel}{rxLogit}(mod.obj, new.data, score.field = "Score",
  os.value = NULL, os.pct = NULL, ...)

\method{scoreModel}{rxGlm}(mod.obj, new.data, score.field = "Score", ...)

\method{scoreModel}{rxLinMod}(mod.obj, new.data, score.field = "Score",
  pred.int = FALSE, int.vals = NULL, log.y = FALSE, ...)

\method{scoreModel}{rxDTree}(mod.obj, new.data, score.field, os.value = NULL,
  os.pct = NULL, ...)
}
\arguments{
\item{mod.obj}{model object}

\item{new.data}{new data to score}

\item{score.field}{name given to the score field}

\item{...}{additional arguments}

\item{os.value}{oversampling value}

\item{os.pct}{oversampling percent}

\item{pred.int}{whether to generate prediction intervals}

\item{int.vals}{interval values}

\item{log.y}{whether to report y on the log scale}
}
\description{
Score function
}
\author{
Ramnath Vaidyanathan, Dan Putler
}

