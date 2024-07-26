#' Merge one data frame with many
#' @description
#' This function uses a primary data frame and merges with secondary data frames.
#' @return Multiple merged data frames.
#' @param primary_df data frame with info to merge with multiple other data frames.
#' @param df_names list of names of data frames to be merged from environment.
#' @param column_name column to use for merging.
#' @export
#' @examples
#' # df_names <- ls() for environment
#' # primary_df <- primary_df
#' # column_name <- "ID"
#' # merge_indiv_df(primary_df, df_names, column_name)
#' # df_list.test = mget(df_names)
#' # write_xlsx(df_list.test , "output.xlsx")
merge_indiv_df <- function(primary_df,
                           df_names,
                           column_name) {
  for (df_name in df_names) {
    secondary_df <- get(df_name)
    merged_df <- merge(primary_df, secondary_df, by = column_name)
    new_df_name <- paste0(df_name)
    assign(new_df_name, merged_df, envir = .GlobalEnv)
  }
}
#' @export
#' @rdname merge_indiv_df



