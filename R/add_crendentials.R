#' Load a Matrix
#'
#' This function downloads the postgresql.jar file directly to your R directory
#'
#' @param user - splitgraph user from https://www.splitgraph.com/connect
#' @param password - splitgraph password from https://www.splitgraph.com/connect
#' @return system variables
#' @export

library.require(keyring)

# Fetch credentials from user prompt and store them
input_credentials <- function(user,password,remote="data.splitgraph.com"){
    user <- readline(paste0("Enter DDN username for ",remote,": ")
    password <- readline(paste0("Enter DDN password for ",remote,": ")
    add_credentials(user,password,remote)
}

user_key <- function(remote) { return (paste0("splitgraph-user-",remote)) }
password_key <- function(remote) { return (paste0("splitgraph-password-",remote)) }

# Store credentials for a splitgraph remote
add_credentials <- function(user,password,remote="data.splitgraph.com"){
    key_set(user_key(remote),user)
    key_set(password_key(remote),password)
}

# Fetch password for a splitgraph remote
get_password <- function(remote="data.splitgraph.com"){return(key_get(password_key(remote)))}

# Fetch user for a splitgraph remote
get_user <- function(remote="data.splitgraph.com"){return(key_get(user_key(remote)))}