#' Translate Codons to Amino Acids
#'
#' This function translates a series of RNA codons into an amino acid chain using a codon table.
#'
#' @param codons A character vector where each element is a codon (a triplet of RNA bases).
#' @return A character string of the amino acid sequence.
#' @examples
#' translate_rna(c("AUG", "GCC", "AUG", "GCG"))
#' @export
translate_rna <- function(codon_extractor) {
  aa_seq <- paste0(codon_table[codons],
                   collapse = "")
  return(aa_seq)
}
