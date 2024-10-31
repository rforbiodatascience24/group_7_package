

#' Random DNA String Creator of Input Length
#'
#' @param string_length input length of the random DNA
#'
#' @return the concatenated sequence string of DNA
#' @export
#'
#' @examples
#' random_DNA(3)
#' # possible output: "ACT"
#'
#' random_DNA(5)
#' # possible output: "TCAGT"
random_DNA <- function(string_length){
  sample_vector <- sample(c("A", "T", "G", "C"),
                          size = string_length,
                          replace = TRUE)
  concatenated_string <- paste0(sample_vector,
                                collapse = "")
  return(concatenated_string)
}
