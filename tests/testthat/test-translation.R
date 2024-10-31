test_that("translation correctly translates RNA codons to amino acids", {
  
  #testing a simple RNA sequence
  expect_equal(translation(c("AUG", "GCC", "AUG", "GCG")), "MAGM")
  
  #testing a RNA sequence with a stop codon
  expect_equal(translation(c("AUG", "GCC", "UAA")), "MA")
  
  #testing a RNA sequence with invalid codon (should return warning or skip it)
  expect_warning(translation(c("AUG", "XXX", "GCC")), "Invalid codon")
  expect_equal(translation(c("AUG", "XXX", "GCC")), "MA")
  
  #testing empty input
  expect_equal(translation(character(0)), "")
})
