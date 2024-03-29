% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runMissingAnalyses.r
\name{runMissingAnalyses}
\alias{runMissingAnalyses}
\title{runMissingAnalyses}
\usage{
runMissingAnalyses(
  connectionDetails,
  cdmDatabaseSchema,
  resultsDatabaseSchema = cdmDatabaseSchema,
  scratchDatabaseSchema = resultsDatabaseSchema,
  vocabDatabaseSchema = cdmDatabaseSchema,
  tempEmulationSchema = resultsDatabaseSchema,
  outputFolder = "output",
  defaultAnalysesOnly = TRUE
)
}
\arguments{
\item{connectionDetails}{An R object of type \code{connectionDetails} created using the
function \code{createConnectionDetails} in the
\code{DatabaseConnector} package.}

\item{cdmDatabaseSchema}{Fully qualified name of database schema that contains OMOP CDM
schema. On SQL Server, this should specifiy both the database and the
schema, so for example, on SQL Server, 'cdm_instance.dbo'.}

\item{resultsDatabaseSchema}{Fully qualified name of database schema that we can write final
results to. Default is cdmDatabaseSchema. On SQL Server, this should
specifiy both the database and the schema, so for example, on SQL
Server, 'cdm_results.dbo'.}

\item{scratchDatabaseSchema}{Fully qualified name of the database schema that will store all of
the intermediate scratch tables, so for example, on SQL Server,
'cdm_scratch.dbo'. Must be accessible to/from the cdmDatabaseSchema
and the resultsDatabaseSchema. Default is resultsDatabaseSchema.
Making this "#" will run Achilles in single-threaded mode and use
temporary tables instead of permanent tables.}

\item{vocabDatabaseSchema}{String name of database schema that contains OMOP Vocabulary. Default
is cdmDatabaseSchema. On SQL Server, this should specifiy both the
database and the schema, so for example 'results.dbo'.}

\item{tempEmulationSchema}{Formerly tempEmulationSchema.  For databases like Oracle where you
must specify the name of the database schema where you want all
temporary tables to be managed. Requires create/insert permissions to
this database.}

\item{outputFolder}{Path to store logs and SQL files}

\item{defaultAnalysesOnly}{Boolean to determine if only default analyses should be run.
Including non-default analyses is substantially more resource
intensive.  Default = TRUE}
}
\value{
No return value.  Run to execute analyses currently missing from results.
}
\description{
\code{runMissingAnalyses} Automatically find and compute analyses that haven't been executed.
}
\examples{
\dontrun{
Achilles::runMissingAnalyses(connectionDetails = connectionDetails,
                             cdmDatabaseSchema = "cdm",
                             resultsDatabaseSchema = "results",

  outputFolder = "/tmp")
}

}
