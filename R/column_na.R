#' remove_all_na_columns
#'
#' This function removes columns with all NA values in a data frame
#'
#' @return a data frame
#'
#' @examples
#' df <- data.frame(
#'     ID = 1:5, Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
#'     Score = c(85, 92, 78, 90, 88), AllNA1 = c(NA, NA, NA, NA, NA),
#'     AllNA2 = c(NA, NA, NA, NA, NA), Mixed = c(NA, 95, NA, 85, 80)
#'    )
#' remove_all_na_columns(df)
#' @export
remove_all_na_columns <- function(dataframe) {
  cleaned_df <- dataframe %>% select(where(~ !all(is.na(.))))
  return(cleaned_df)
}
#' @export
#' @rdname remove_all_na_columns


