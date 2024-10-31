#' Translate RNA Sequence to Amino Acids
#'
#' This function translates an RNA sequence into an amino acid chain using a codon table.
#'
#' @param RNA A character string representing the RNA sequence.
#' @return A character string of the amino acid sequence.
#' @examples
#' translate_rna("AUGGCCAUGGCGCCCAGAACUG")
#' @export
translate_rna <- function(RNA) {
  codons <- strsplit(RNA, "(?<=.{3})", perl = TRUE)[[1]]
  # Check for valid codons and replace invalid ones with a warning or empty string
  aa_seq <- paste(sapply(codons, function(codon) {
    if (!is.null(codon_table[codon])) codon_table[codon] else {
      warning(paste("Invalid codon:", codon))
      ""
    }
  }), collapse = "")
  return(aa_seq)
}
