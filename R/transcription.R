#' Title Transcription Function
#'
#' @param concatenated_string A string of DNA
#'
#' @return Returns the transcribed string of DNA in the form of an RNA string
#' @export
#'
#' @examples
random_sequence <- paste(sample(c("A", "C", "G", "U"),
                                50,
                                replace = TRUE),
                         collapse = "")

transcription <- function(random_sequence){
  RNA <- gsub("T", "U",
              random_sequence)
  return(RNA)
}
