###############################################################
# Project : Google Play Store EDA
# File    : 03_data_cleaning.R
# Purpose : Clean the raw dataset
###############################################################

# Load Configuration
source("src/config.R")

display_title("DATA CLEANING MODULE")

#--------------------------------------------------------------
# Load Dataset
#--------------------------------------------------------------

mydata <- read_csv(RAW_DATA)

cat("\nOriginal Dataset Dimensions\n")
cat("---------------------------------\n")
cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

#--------------------------------------------------------------
# Remove Duplicate Records
#--------------------------------------------------------------

duplicates <- sum(duplicated(mydata))

cat("\nDuplicate Records Found :", duplicates, "\n")

mydata <- distinct(mydata)

cat("Rows After Removing Duplicates :", nrow(mydata), "\n")

#--------------------------------------------------------------
# Missing Values
#--------------------------------------------------------------

cat("\nMissing Values Before Cleaning\n")
cat("---------------------------------\n")

print(colSums(is.na(mydata)))

#--------------------------------------------------------------
# Clean Rating
#--------------------------------------------------------------

mydata$Rating <- as.numeric(mydata$Rating)

#--------------------------------------------------------------
# Clean Reviews
#--------------------------------------------------------------

mydata$Reviews <- as.numeric(mydata$Reviews)

#--------------------------------------------------------------
# Clean Price
#--------------------------------------------------------------

mydata$Price <- clean_price(mydata$Price)

#--------------------------------------------------------------
# Clean Installs
#--------------------------------------------------------------

mydata$Installs <- clean_installs(mydata$Installs)

#--------------------------------------------------------------
# Clean Size
#--------------------------------------------------------------

mydata$Size <- clean_size(mydata$Size)

#--------------------------------------------------------------
# Remove Remaining Missing Values
#--------------------------------------------------------------

mydata <- mydata %>%
  filter(!is.na(Rating),
         !is.na(Size),
         !is.na(Price),
         !is.na(Installs))

cat("\nMissing Values After Cleaning\n")
cat("---------------------------------\n")

print(colSums(is.na(mydata)))

#--------------------------------------------------------------
# Save Clean Dataset
#--------------------------------------------------------------

write_csv(mydata, PROCESSED_DATA)

cat("\nCleaned Dataset Saved Successfully\n")

cat("\nLocation :\n")
cat(PROCESSED_DATA,"\n")

cat("\nFinal Dataset Dimensions\n")
cat("---------------------------------\n")

cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

display_title("DATA CLEANING COMPLETED")