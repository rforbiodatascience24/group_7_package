#' Title Transcription Function
#'
#' @param concatenated_string A string of DNA
#'
#' @return Returns the transcribed string of DNA in the form of an RNA string
#' @export
#'
#' @examples random_sequence <- paste(sample(c("A", "C", "G", "U"),
#'                                           50, replace = TRUE),
#'                                           collapse = "")
#' transcription(random_sequence)

transcription <- function(concatenated_string){
  RNA <- gsub("T", "U",
              concatenated_string)
  return(RNA)
}
