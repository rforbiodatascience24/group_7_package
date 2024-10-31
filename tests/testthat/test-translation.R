test_that("translation correctly translates RNA codons to amino acids", {
  
  # With Start and Stop Codons. Expected output: "MAK" (starts at "AUG" and stops at "UGA")
  translation(c("GCG", "AUG", "GCC", "AAA", "UGA", "GCU"))
  
  # No Start Codon but Valid Codons. Expected output: "GAK" (translates entire sequence)
  translation(c("GCG", "GCC", "AAA", "GCU"))

  # No Stop Codon but Valid Codons. Expected output: "MAK" (translates from "AUG" through end)
  translation(c("AUG", "GCC", "AAA", "GCU"))
  
  # Testing RNA sequence with invalid codon (should return warning or skip it)
  expect_warning(translation(c("AUG", "XXX", "GCC")), "Invalid codon")
  expect_equal(translation(c("AUG", "XXX", "GCC")), "MA")
  
  # Testing empty input
  expect_equal(translation(character(0)), "")
})
