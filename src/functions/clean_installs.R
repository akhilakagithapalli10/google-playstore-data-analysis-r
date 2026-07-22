###############################################################
# Function : clean_installs
# Purpose  : Convert Installs column to numeric
###############################################################

clean_installs <- function(installs){
  
  installs <- gsub(",", "", installs)
  
  installs <- gsub("\\+", "", installs)
  
  installs <- as.numeric(installs)
  
  return(installs)
  
}