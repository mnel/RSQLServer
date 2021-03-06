% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{dbUnloadDriver,SQLServerDriver-method}
\alias{dbUnloadDriver,SQLServerDriver-method}
\title{Unload SQLServer driver}
\usage{
\S4method{dbUnloadDriver}{SQLServerDriver}(drv, ...)
}
\arguments{
\item{drv}{Object created by \code{\link{SQLServer}}}

\item{...}{any other arguments are passed to the driver. Not used here.}
}
\value{
Always logical \code{TRUE}.
}
\description{
Not implemented. Simply returns \code{TRUE}. See
\code{\link[RJDBC]{JDBCDriver-methods}}.
}
\examples{
\dontrun{
drv <- SQLServer()
dbUnloadDriver(drv)
}
}

