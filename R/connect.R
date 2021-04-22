#' connect
#'
#' Connect to splitgraph
#'
#' @param database - PRIVATE or PUBLIC - default to PUBLIC
#' @return object dbconnect
#' @export

connect <- function(database='PUBLIC'){
    conn <- dbConnect(
        JDBC("org.postgresql.Driver", file.path(.libPaths()[1],'postgresql-42.2.19.jar')),
        "jdbc:postgresql://data.splitgraph.com:5432/ddn",
        user=key_list(keyring = paste0("SPLITGRAPH_",database))$username,
        password=key_get("Splitgraph", key_list(keyring = paste0("SPLITGRAPH_",database))$username, keyring = "SPLITGRAPH_PUBLIC")
        )
    }