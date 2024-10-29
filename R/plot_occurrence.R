

#' Plot the occurrences within an amino acid sequence
#'
#' @param amino_acid_sequence A character string containing a sequence of amino acids.
#'
#' @return A histogram plot of the occurence of each unique amino acid.
#' @export
#'
#' @examples sequence <- "ACDEFGHIKLMNPQRSTVWYACDEFGHIKLMN"
#' plot_occurrence(sequence)
#'
plot_occurrence <- function(amino_acid_sequence){
  unique_amino_acids <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acid_sequence"]] <- rownames(counts)

  amino_acid_occurrence <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acid_sequence, y = Counts, fill = amino_acid_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_occurrence)
}

