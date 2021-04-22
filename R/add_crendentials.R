#' Writing credentials to the env. variables
#'
#' This function is based on keyring package and writes the credentials to your enviroment
#'
#' @param user - splitgraph user from https://www.splitgraph.com/connect
#' @param password - splitgraph password from https://www.splitgraph.com/connect
#' @param database - PRIVATE or PUBLIC - default to PUBLIC
#' @return system variables
#' @export

add_credentials <- function(user,password,host,port,database_name,database='PUBLIC'){
        keyring_create(paste0("SPLITGRAPH_",database))
        key_set_with_value(paste(paste(host,port,sep=':'),database_name,sep='/'), user, password = password, keyring = paste0("SPLITGRAPH_",database))
        }