% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_soil_profile.R
\name{read_soil_profile}
\alias{read_soil_profile}
\title{Reads a single DSSAT formatted soil profile from a raw character vector}
\usage{
read_soil_profile(
  raw_lines,
  left_justified = NULL,
  col_types = NULL,
  col_names = NULL
)
}
\arguments{
\item{raw_lines}{a character vector that includes the contents
of a single tier of data (including headline, but excluding version
 stamp and other header information) from a DSSAT output file}

\item{left_justified}{A character vector of column names that
should be left justified}

\item{col_types}{One of NULL, a cols() specification, or a string.
See \code{\link[readr]{read_fwf}} or \code{vignette("readr")} for
more details.}

\item{col_names}{A character vector of column names; primarily
helpful for cases where there are no white spaces between column
names within the header line}
}
\value{
a list containing tibbles for each tier of a DSSAT formatted
 soil profile
}
\description{
Reads a single DSSAT formatted soil profile from a raw character vector
}
\examples{

sample_sol <- c(
"*IB00000001  IBSNAT      SIC     210 DEFAULT - DEEP SILTY CLAY",
"@SITE        COUNTRY          LAT     LONG SCS FAMILY",
" Generic     Generic          -99      -99 Generic",
"@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE",
"   -99  0.11   6.0  0.30  85.0  1.00  1.00 IB001 IB001 IB001",
"@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB",
"     5   -99 0.228 0.385 0.481 1.000   -99  1.30  1.75  50.0  45.0   0.0 0.170   6.5   -99",
"    15   -99 0.228 0.385 0.481 1.000   -99  1.30  1.75  50.0  45.0   0.0 0.170   6.5   -99",
"    30   -99 0.249 0.406 0.482 0.638   -99  1.30  1.60  50.0  45.0   0.0 0.170   6.5   -99",
"    45   -99 0.249 0.406 0.465 0.472   -99  1.35  1.45  50.0  45.0   0.0 0.140   6.5   -99",
"    60   -99 0.249 0.406 0.465 0.350   -99  1.35  1.45  50.0  45.0   0.0 0.140   6.5   -99",
"    90   -99 0.308 0.456 0.468 0.223   -99  1.35  1.10  50.0  45.0   0.0 0.110   6.5   -99",
"   120   -99 0.207 0.341 0.452 0.122   -99  1.40  0.65  50.0  45.0   0.0 0.060   6.5   -99",
"   150   -99 0.243 0.365 0.455 0.067   -99  1.40  0.30  50.0  45.0   0.0 0.030   6.5   -99",
"   180   -99 0.259 0.361 0.457 0.037   -99  1.40  0.10  50.0  45.0   0.0 0.010   6.5   -99",
"   210   -99 0.259 0.361 0.457 0.020   -99  1.40  0.01  50.0  45.0   0.0 0.000   6.5   -99")

read_soil_profile(sample_sol)

}
