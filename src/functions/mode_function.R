###############################################################
# Function : calculate_mode
# Purpose  : Calculate Mode
###############################################################

calculate_mode <- function(x){
  
  x <- x[!is.na(x)]
  
  ux <- unique(x)
  
  ux[which.max(tabulate(match(x, ux)))]
  
}