

#' Random DNA String Creator of Input Length
#'
#' @string_length input length of the random DNA
#' @sample_vector vector created using the sample function containing a random sequence of A, T, G, or C of length based on the input size
#' @concatenated_string string created from the sample_vector using paste0 to concatenate values of the vector
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
