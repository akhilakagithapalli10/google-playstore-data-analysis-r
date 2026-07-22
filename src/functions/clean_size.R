###############################################################
# Function : clean_size
# Purpose  : Convert Size column into MB
###############################################################

clean_size <- function(size){
  
  size[size == "Varies with device"] <- NA
  
  size <- gsub("M", "", size)
  
  size <- gsub("k", "", size)
  
  size <- as.numeric(size)
  
  return(size)
  
}