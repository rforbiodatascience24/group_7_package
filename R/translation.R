#' Translate RNA Codons to an Amino Acid Sequence
#'
#' This function translates a vector of RNA codons into an amino acid sequence using a codon table.
#' If a start codon (AUG) is present, translation begins there; otherwise, it starts from the first codon.
#' Translation stops at the first stop codon, if present; otherwise, it continues through the sequence.
#'
#' @param codons A character vector where each element is a codon (e.g., "AUG", "GCC").
#' @return A character string representing the translated amino acid sequence.
#' @examples
#' translation(c("GCG", "AUG", "GCC", "AAA", "UGA", "GCU"))
#' translation(c("GCG", "GCC", "AAA", "GCU"))
#' @export
translation <- function(codons) {
  start_codon <- "AUG"
  stop_codons <- c("UAA", "UAG", "UGA")
  
  # Determine where to start translation
  start_index <- ifelse(any(codons == start_codon), which(codons == start_codon)[1], 1)
  
  # Extract codons starting from start_index
  codons <- codons[start_index:length(codons)]
  
  # Translate codons, stopping at the first stop codon if encountered
  aa_seq <- paste0(sapply(codons, function(codon) {
    if (codon %in% stop_codons) return("")  # Stop translation at stop codon
    if (is.null(codon_table[codon])) {
      warning(paste("Invalid codon:", codon))  # Skip invalid codons
      return("")
    }
    codon_table[codon]  # Translate valid codons
  }), collapse = "")
  
  return(aa_seq)
}
