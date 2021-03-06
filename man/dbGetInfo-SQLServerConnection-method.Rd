% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{dbGetInfo,SQLServerConnection-method}
\alias{dbGetInfo,SQLServerConnection-method}
\title{Get connection info}
\usage{
\S4method{dbGetInfo}{SQLServerConnection}(dbObj, ...)
}
\arguments{
\item{dbObj}{Object of type \code{\linkS4class{SQLServerConnection}} representing a
connection}

\item{...}{other arguments to methods. Not used here.}
}
\value{
a named list containing database product name, database version,
user, and whether the connection is read only.
}
\description{
Get connection info
}
\examples{
\dontrun{
dbGetInfo(dbConnect(SQLServer(), 'DatabaseName'))
}
}

