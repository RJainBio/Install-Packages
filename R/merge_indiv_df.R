#' merge_and_create_individual_dfs
#'
#' This function uses a primary dataframe and merges with secondary dataframes.
#' The output is the secondary dataframes with the primary df columns.
#' Unmatched rows are dropped.
#' @return many data frames
#'
#' @examples
#' df_names <- ls() # list of secondary data frames in environment
#' primary_df <- primary_df # dataframe with info to be distributed across all others
#' column_name <- "ID" # column common in primary and all secondary for merge
#' merge_and_create_individual_dfs(primary_df, df_names, column_name)
#' @export
merge_and_create_individual_dfs <- function(primary_df, df_name, column_name) {
  for (df_name in df_names) {
    # Get the secondary dataframe by name
    secondary_df <- get(df_name)

    # Merge the primary dataframe with the secondary dataframe
    merged_df <- merge(primary_df, secondary_df, by = column_name)

    # Create new dataframe name by appending '_merged' to the original name
    new_df_name <- paste0(df_name) # This is unused but can be changed to rename dfs if overwrite is not desired

    # Assign the merged dataframe to the new name in the global environment
    assign(new_df_name, merged_df, envir = .GlobalEnv)
  }
}
#' @export
#' @rdname  merge_and_create_individual_dfs


