###############################################################
# Project : Google Play Store EDA
# File    : 10_generate_report.R
# Purpose : Generate Final Project Report
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("FINAL PROJECT REPORT")

#--------------------------------------------------------------
# Load Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

#--------------------------------------------------------------
# Start Report
#--------------------------------------------------------------

sink("outputs/reports/final_project_report.txt")

cat("=============================================================\n")
cat("             GOOGLE PLAY STORE EDA PROJECT REPORT\n")
cat("=============================================================\n\n")

cat("1. PROJECT OVERVIEW\n")
cat("-------------------------------------------------------------\n")
cat("This project performs an end-to-end Exploratory Data Analysis\n")
cat("on the Google Play Store Dataset using R.\n\n")

cat("2. DATASET SUMMARY\n")
cat("-------------------------------------------------------------\n")
cat("Original Records : 10841\n")
cat("Clean Records    :", nrow(mydata), "\n")
cat("Total Columns    :", ncol(mydata), "\n\n")

cat("3. DATA PROCESSING MODULES\n")
cat("-------------------------------------------------------------\n")
cat("✔ Data Loading\n")
cat("✔ Data Understanding\n")
cat("✔ Data Cleaning\n")
cat("✔ Feature Engineering\n")
cat("✔ Descriptive Statistics\n")
cat("✔ Data Visualization\n")
cat("✔ Correlation Analysis\n")
cat("✔ Business Insights\n")
cat("✔ Data Normalization\n\n")

cat("4. KEY STATISTICS\n")
cat("-------------------------------------------------------------\n")
cat("Average Rating :", round(mean(mydata$Rating),2), "\n")
cat("Average Reviews:", round(mean(mydata$Reviews),0), "\n")
cat("Average Size   :", round(mean(mydata$Size),2),"MB\n")
cat("Average Price  : $", round(mean(mydata$Price),2), "\n\n")

cat("5. BUSINESS INSIGHTS\n")
cat("-------------------------------------------------------------\n")

top_category <- names(sort(table(mydata$Category), decreasing = TRUE))[1]
top_genre <- names(sort(table(mydata$Genres), decreasing = TRUE))[1]

cat("Top Category :", top_category, "\n")
cat("Top Genre    :", top_genre, "\n")
cat("Free Apps    :", sum(mydata$Is_Free=="Free"), "\n")
cat("Paid Apps    :", sum(mydata$Is_Free=="Paid"), "\n\n")

cat("6. GENERATED FILES\n")
cat("-------------------------------------------------------------\n")
cat("✔ Clean Dataset\n")
cat("✔ Featured Dataset\n")
cat("✔ Min-Max Dataset\n")
cat("✔ Z-Score Dataset\n")
cat("✔ Descriptive Statistics CSV\n")
cat("✔ Correlation Matrix CSV\n")
cat("✔ Business Insights Report\n")
cat("✔ Final Project Report\n")
cat("✔ 16 Visualization Images\n\n")

cat("7. PROJECT CONCLUSION\n")
cat("-------------------------------------------------------------\n")
cat("The project successfully demonstrates a complete\n")
cat("Exploratory Data Analysis workflow in R.\n")
cat("It includes data preprocessing, feature engineering,\n")
cat("statistical analysis, visualization, correlation\n")
cat("analysis, business insights, and normalization.\n\n")

cat("=============================================================\n")
cat("                  PROJECT COMPLETED SUCCESSFULLY\n")
cat("=============================================================\n")

sink()

cat("\nFinal Project Report Generated Successfully.\n")

display_title("PROJECT COMPLETED")