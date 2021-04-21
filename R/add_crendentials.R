#' Load a Matrix
#'
#' This function downloads the postgresql.jar file directly to your R directory
#'
#' @param user - splitgraph user from https://www.splitgraph.com/connect
#' @param password - splitgraph password from https://www.splitgraph.com/connect
#' @return system variables
#' @export

add_credentials <- function(user,password){
        Sys.setenv(SPLITGRAPH_USER = user)
        Sys.setenv(SPLITGRAPH_PASSWORD = password)
        }
