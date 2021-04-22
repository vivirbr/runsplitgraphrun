#' connect
#'
#' Connect to splitgraph
#'
#' @return object dbconnect
#' @export

connect <- function(remote="data.splitgraph.com", port=5432){
    conn <- dbConnect(
        JDBC("org.postgresql.Driver", paste0(.libPaths()[1],'/postgresql-42.2.19.jar')),
        paste0("jdbc:postgresql://", remote, ":", port, "/ddn"),
        user=get_user(remote),
        password=get_password(remote)
        )
    }