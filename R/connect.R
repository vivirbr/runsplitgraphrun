#' connect
#'
#' Connect to splitgraph
#'
#' @return object dbconnect
#' @export

connect <- function(){
    conn <- dbConnect(
        JDBC("org.postgresql.Driver", file.path(.libPaths()[1],'postgresql-42.2.19.jar')),
        "jdbc:postgresql://data.splitgraph.com:5432/ddn",
        user=Sys.getenv("SPLITGRAPH_USER"),
        password=Sys.getenv("SPLITGRAPH_PASSWORD")
        )
    }