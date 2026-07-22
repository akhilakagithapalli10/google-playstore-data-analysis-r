###############################################################
# Project : Google Play Store EDA
# File    : 09_normalization.R
# Purpose : Normalize Numeric Features
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("DATA NORMALIZATION MODULE")

#--------------------------------------------------------------
# Load Featured Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

cat("\nDataset Loaded Successfully\n")
cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

#--------------------------------------------------------------
# Numeric Columns
#--------------------------------------------------------------

numeric_columns <- c(
  "Rating",
  "Reviews",
  "Size",
  "Installs",
  "Price"
)

#--------------------------------------------------------------
# Min-Max Normalization
#--------------------------------------------------------------

minmax_data <- mydata

for(col in numeric_columns){
  
  x <- mydata[[col]]
  
  minmax_data[[col]] <-
    (x - min(x, na.rm = TRUE)) /
    (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))
  
}

#--------------------------------------------------------------
# Z-Score Normalization
#--------------------------------------------------------------

zscore_data <- mydata

for(col in numeric_columns){
  
  x <- mydata[[col]]
  
  zscore_data[[col]] <-
    (x - mean(x, na.rm = TRUE)) /
    sd(x, na.rm = TRUE)
  
}

#--------------------------------------------------------------
# Verify Data Types
#--------------------------------------------------------------

cat("\nChecking Data Types After Normalization\n")
print(sapply(zscore_data[numeric_columns], class))

#--------------------------------------------------------------
# Save Min-Max Dataset
#--------------------------------------------------------------

write_csv(
  minmax_data,
  "data/processed/googleplaystore_minmax.csv"
)

#--------------------------------------------------------------
# Save Z-Score Dataset
#--------------------------------------------------------------

write_csv(
  zscore_data,
  "data/processed/googleplaystore_zscore.csv"
)

#--------------------------------------------------------------
# Completion Message
#--------------------------------------------------------------

cat("\n=========================================\n")
cat("Normalization Completed Successfully\n")
cat("=========================================\n")

cat("\nDatasets Generated\n")
cat("------------------------------\n")
cat("1. googleplaystore_minmax.csv\n")
cat("2. googleplaystore_zscore.csv\n")

display_title("DATA NORMALIZATION COMPLETED")