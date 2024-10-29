#' Title: DNA Transcription Function
#'
#' @param concatenated_string A string of DNA created in function 1
#'
#' @return A string of RNA that has been transcribed from the input DNA sequence
#' @export
#'
#' @examples
transcription <- function(concatenated_string){
  RNA <- gsub("T", "U", concatenated_string)
  return(RNA)
}
