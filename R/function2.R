transcription <- function(concatenated_string){
  RNA <- gsub("T", "U", concatenated_string)
  return(RNA)
}
