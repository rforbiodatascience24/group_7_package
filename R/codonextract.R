#' Codon Extract
#'
#' @sequenceDNA string containing DNA sequence
#' @codons sequence separated into codons
#'
#' @return Input string separated into codons
#' @export
#'
#' @examples
#' codon_extract("ATGAAAATA")
#' # output: "ATG AAA ATA"
codon_extract <- function(sequenceDNA, start = 1){
  input_length <- nchar(sequenceDNA)
  codons <- substring(sequenceDNA,
                      first = seq(from = start, to = input_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = input_length, by = 3))
  return(codons)
}
