% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exportToCSV.R
\name{exportResultsToCSV}
\alias{exportResultsToCSV}
\title{exportResultsToCSV}
\usage{
exportResultsToCSV(
  connectionDetails,
  resultsDatabaseSchema,
  analysisIds = c(),
  minCellCount = 5,
  exportFolder
)
}
\arguments{
\item{connectionDetails}{An R object of type \code{connectionDetails} created using the
function \code{createConnectionDetails} in the
\code{DatabaseConnector} package.}

\item{resultsDatabaseSchema}{Fully qualified name of database schema that we can write final
results to. Default is cdmDatabaseSchema. On SQL Server, this should
specifiy both the database and the schema, so for example, on SQL
Server, 'cdm_results.dbo'.}

\item{analysisIds}{(OPTIONAL) A vector containing the set of Achilles analysisIds for
which results will be generated. If not specified, all analyses will
be executed. Use \code{\link{getAnalysisDetails}} to get a list of
all Achilles analyses and their Ids.}

\item{minCellCount}{To avoid patient identification, cells with small counts (<=
minCellCount) are deleted. Set to 0 for complete summary without
small cell count restrictions.}

\item{exportFolder}{Path to store results}
}
\value{
No return value.  Called to export CSV file to the file system.
}
\description{
\code{exportResultsToCSV} exports all results to a CSV file
}
\details{
\code{exportResultsToCSV} writes a CSV file with all results to the export folder.
}
