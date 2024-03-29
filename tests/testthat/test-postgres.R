test_that("Achilles Postgresql Execution", {
  if (Sys.getenv("CDM5_POSTGRESQL_SERVER") != "") {
    details <- createConnectionDetails(
      dbms = "postgresql",
      user = Sys.getenv("CDM5_POSTGRESQL_USER"),
      password = URLdecode(Sys.getenv("CDM5_POSTGRESQL_PASSWORD")),
      server = Sys.getenv("CDM5_POSTGRESQL_SERVER")
    )
    
    expect_no_error(
      Achilles::achilles(
        connectionDetails = details,
        cdmDatabaseSchema = Sys.getenv("CDM5_POSTGRESQL_CDM54_SCHEMA"),
        resultsDatabaseSchema = Sys.getenv("CDM5_POSTGRESQL_OHDSI_SCHEMA"),
        cdmVersion = "5.4",
        createTable = T
      )
    )
  } else {
    message("Skipping Postgres testing because environmental variables not set")
  }
})