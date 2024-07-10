print("Hi")

#' save_all_sheets
#' 
#' This function can be used to open all sheets from a list of excel files into separate data frames
#'
#' @return a set of data frames
#' @export
#'
#' @examples
#' folder_path <- "myfolder/"
#' excel_files <- list.files(path = folder_path, pattern = "\\.xlsx$", full.names = TRUE)
#' walk(excel_files, save_all_sheets)

save_all_sheets <- function(file) {
  sheets <- excel_sheets(file)
  file_name <- sub("\\.xlsx$", "", basename(file))  # Removing extension for naming
  for (sheet in sheets) {
    sheet_data <- read_excel(file, sheet = sheet)
    df_name <- paste0(file_name, "_", sheet)
    assign(df_name, sheet_data, envir = .GlobalEnv)
  }
}
