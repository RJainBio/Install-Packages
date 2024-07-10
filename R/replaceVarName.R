#' replace_variable_names
#'
#' This function can be used to open all sheets from a list of excel files into separate data frames
#'
#' @return a set of data frames
#' @export
#'
#' @examples
#' df.name <- c("a", "b", "c", "d", "e", "f", "g", "h")
#' df.name.new <- c("AmAcidPep", "BileAcids", "FattyAcids", "MicrobiomeGut",
#'                  "MSMLS_HIL", "MSMS_Plate", "MSMLS_RP", "OrganicAcids")
#' names(df.name.new) <- df.name
#' replace_variable_names(df.name.new)

replace_variable_names <- function(name_mapping) {
  for (old_name in names(name_mapping)) {
    new_name <- name_mapping[[old_name]]

    # Assign the value of the old variable to the new variable
    assign(new_name, get(old_name), envir = .GlobalEnv)

    # Remove the old variable
    rm(list = old_name, envir = .GlobalEnv)
  }
}
#' @export
#' @rdname replace_variable_names
