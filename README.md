# RSQLServer

An R package that provides a SQL Server R Database Interface ([DBI](https://github.com/rstats-db/DBI)), based on [jTDS JDBC driver](http://jtds.sourceforge.net/index.html).

This package wraps the jTDS SQL Server driver and extends the [RJDBC](https://github.com/s-u/RJDBC) classes and DBI methods. It defines a SQLServerDriver, SQLServerConnection & SQLServerResult S4 classes as extensions of the RJDBC equivalent classes. Most of the DBI methods will simply be calls to methods defined by RJDBC classes. However, the dbConnect and some of the dbGetInfo methods are specific to SQL Server. The jTDS drivers do extend to Sybase SQL Server, but currently, only Microsoft SQL Server is supported by this package.

## Installation

You can install the package from CRAN:

```R
install.packages("RSQLServer")
```

Or try the bleeding edge:

```R
install.packages('devtools')
devtools::install_github('imanuelcostigan/RSQLServer@develop')
```

## Usage

This package uses the standard R DBI generics:

```R
library(DBI)
conn <- dbConnect(RSQLServer::SQLServer(), 'DatabaseName')
dbListTables(conn)
dbListFields(conn, 'tablename')
res <- dbSendQuery(conn, 'SELECT TOP 10 * FROM tablename')
dbFetch(res)
dbClearResult(res)
dbDisconnect(res)
```
