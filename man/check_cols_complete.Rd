% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check-cols-complete.R
\name{check_cols_complete}
\alias{check_cols_complete}
\title{Check for complete columns}
\usage{
check_cols_complete(
  data,
  required_cols,
  empty_values = c(NA, ""),
  strict = TRUE,
  success_msg = "There is no missing data in columns that are required to be complete",
  fail_msg = "There is missing data in some columns that are required to be complete"
)
}
\arguments{
\item{data}{Data to check}

\item{required_cols}{A character vector of the required columns to check for
completeness.}

\item{empty_values}{Values that are considered empty. Defaults to \code{NA} and
\code{""}.}

\item{strict}{If \code{FALSE}, return a \code{"check_warn"} object; if \code{TRUE}, return a
\code{"check_fail"} object}

\item{success_msg}{Message indicating the check succeeded.}

\item{fail_msg}{Message indicating the check failed.}
}
\value{
A condition object indicating whether the data contains columns that
are not complete.
}
\description{
Check for complete columns in the data and fail (or warn) if incomplete.
Missing columns that are required to be complete are ignored.
}
\examples{
dat <- data.frame(specimenID = c("x", "y"), organ = c(NA, NA))
check_cols_complete(dat, c("specimenID", "organ"))
}
