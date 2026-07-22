###############################################################
# Project : Google Play Store EDA
# File    : 01_data_loading.R
# Purpose : Load the dataset and display basic information
###############################################################

# Load Configuration
source("src/config.R")

cat("\n=============================================\n")
cat(" GOOGLE PLAY STORE - DATA LOADING MODULE\n")
cat("=============================================\n")

# Read Dataset
mydata <- read_csv(RAW_DATA)

cat("\nDataset Loaded Successfully!\n")

cat("\nRows :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

cat("\nColumn Names\n")
print(names(mydata))

cat("\nFirst 10 Records\n")
print(head(mydata,10))

cat("\nDataset Structure\n")
str(mydata)

cat("\nSummary Statistics\n")
print(summary(mydata))

cat("\n=============================================\n")
cat(" Data Loading Completed Successfully\n")
cat("=============================================\n")