###############################################################
# Project : Google Play Store EDA
# File    : 02_data_understanding.R
# Purpose : Understand dataset quality and structure
###############################################################

# Load Configuration
source("src/config.R")

cat("\n=============================================\n")
cat(" GOOGLE PLAY STORE - DATA UNDERSTANDING\n")
cat("=============================================\n")

# Read Dataset
mydata <- read_csv(RAW_DATA)

#--------------------------------------------------------------
# Dataset Dimensions
#--------------------------------------------------------------

cat("\nDataset Dimensions\n")
cat("---------------------------------------------\n")
cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

#--------------------------------------------------------------
# Missing Values
#--------------------------------------------------------------

cat("\nMissing Values\n")
cat("---------------------------------------------\n")

missing_values <- colSums(is.na(mydata))
print(missing_values)

#--------------------------------------------------------------
# Duplicate Records
#--------------------------------------------------------------

cat("\nDuplicate Records\n")
cat("---------------------------------------------\n")

duplicates <- sum(duplicated(mydata))

cat("Total Duplicate Records :", duplicates, "\n")

#--------------------------------------------------------------
# Data Types
#--------------------------------------------------------------

cat("\nData Types\n")
cat("---------------------------------------------\n")

print(sapply(mydata, class))

#--------------------------------------------------------------
# Unique Values
#--------------------------------------------------------------

cat("\nUnique Values in Each Column\n")
cat("---------------------------------------------\n")

print(sapply(mydata, function(x) length(unique(x))))

#--------------------------------------------------------------
# Numeric Columns
#--------------------------------------------------------------

cat("\nNumeric Columns\n")
cat("---------------------------------------------\n")

numeric_columns <- names(mydata)[sapply(mydata, is.numeric)]

print(numeric_columns)

#--------------------------------------------------------------
# Character Columns
#--------------------------------------------------------------

cat("\nCharacter Columns\n")
cat("---------------------------------------------\n")

character_columns <- names(mydata)[sapply(mydata, is.character)]

print(character_columns)

cat("\n=============================================\n")
cat(" Data Understanding Completed Successfully\n")
cat("=============================================\n")