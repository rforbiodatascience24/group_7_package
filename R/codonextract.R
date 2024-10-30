#' Codon Extract
#'
#' @param concatenated_string string containing DNA sequence
#'
#' @return Input string separated into codons
#' @export
#'
#' @examples
#' codon_extract("ATGAAAATA")
#' # output: "ATG AAA ATA"
codon_extractor <- function(concatenated_string, start = 1){
  input_length <- nchar(concatenated_string)
  codons <- substring(concatenated_string,
                      first = seq(from = start, to = input_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = input_length, by = 3))
  return(codons)
}
