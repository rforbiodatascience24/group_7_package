#' Codon_extractor
#'
#' @param input_sequence a string containing a DNA/RNA sequence
#' @param start a integer indicating starting position for codon extraction (default is one)
#'
#' @return a string of codons (triplets) constructed from input sequence
#' @export
#'
#' @examples codon_extractor("ATTGATTTA")
#'
codon_extractor <- function(input_sequence,
                            start = 1){
  sequence_length <- nchar(input_sequence)
  codons <- substring(input_sequence,
                      first = seq(from = start,
                                  to = sequence_length-3+1,
                                  by = 3),
                      last = seq(from = 3+start-1,
                                 to = sequence_length,
                                 by = 3))
  return(codons)
}
