#' Codon Extract
#'
#' @param input
#
#'
#' @param start
#'
#' @return
#' @export
#'
#' @examples
name_me1 <- function(input, start = 1){
  input_length <- nchar(input)
  codons <- substring(input,
                      first = seq(from = start, to = input_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = input_length, by = 3))
  return(codons)
}
