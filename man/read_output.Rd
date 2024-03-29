% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_output.R
\name{read_output}
\alias{read_output}
\title{Reads data from a single DSSAT output file}
\usage{
read_output(
  file_name,
  col_types = NULL,
  col_names = NULL,
  left_justified = NULL,
  read_only = NULL,
  store_v_fmt = FALSE
)
}
\arguments{
\item{file_name}{a character vector of length one that contains the name
of a single DSSAT output file}

\item{col_types}{One of NULL, a cols() specification, or a string.
See \code{\link[readr]{read_fwf}} or \code{vignette("readr")} for
more details.}

\item{col_names}{A character vector of column names; primarily
helpful for cases where there are no white spaces between column
names within the header line}

\item{left_justified}{A character vector of column names that
should be left justified}

\item{read_only}{NULL or a character vector of column names that should be read in;
If non-NULL only the columns listed will be read in.}

\item{store_v_fmt}{a logical value indicating whether or not to store the
format for variables being read}
}
\value{
a tibble containing the data from the raw DSSAT output
}
\description{
Reads data from a single DSSAT output file
}
\examples{

# Extract file path for sample output file path
sample_output <- system.file('extdata','SAMPLE.OUT',package='DSSAT')

out <- read_output(sample_output)

}
