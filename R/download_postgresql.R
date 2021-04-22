#' Load a Matrix
#'
#' This function downloads the postgresql.jar file directly to your R directory
#'
#' @return writes postgresql.jar in your R folder
#' @export


download_postgresql <- function(){
    download.file(url='https://jdbc.postgresql.org/download/postgresql-42.2.19.jar',destfile=file.path(.libPaths()[1], 'postgresql-42.2.19.jar'))
}
