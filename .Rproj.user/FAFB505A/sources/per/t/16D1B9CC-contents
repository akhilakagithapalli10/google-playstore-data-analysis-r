###############################################################
# Project : Google Play Store EDA
# File    : 04_feature_engineering.R
# Purpose : Create new features for analysis
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("FEATURE ENGINEERING MODULE")

#--------------------------------------------------------------
# Load Clean Dataset
#--------------------------------------------------------------

mydata <- read_csv(PROCESSED_DATA)

cat("\nDataset Loaded Successfully\n")

cat("\nRows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

#--------------------------------------------------------------
# Feature 1 : Free or Paid
#--------------------------------------------------------------

mydata$Is_Free <- ifelse(mydata$Price == 0,
                         "Free",
                         "Paid")

#--------------------------------------------------------------
# Feature 2 : Rating Category
#--------------------------------------------------------------

mydata$Rating_Category <- cut(
  mydata$Rating,
  breaks = c(0,2,3,4,5),
  labels = c("Poor","Average","Good","Excellent"),
  include.lowest = TRUE
)

#--------------------------------------------------------------
# Feature 3 : Install Category
#--------------------------------------------------------------

mydata$Install_Category <- cut(
  mydata$Installs,
  breaks = c(0,1000,100000,Inf),
  labels = c("Low","Medium","High"),
  include.lowest = TRUE
)

#--------------------------------------------------------------
# Feature 4 : Size Category
#--------------------------------------------------------------

mydata$Size_Category <- cut(
  mydata$Size,
  breaks = c(0,10,30,Inf),
  labels = c("Small","Medium","Large"),
  include.lowest = TRUE
)

#--------------------------------------------------------------
# Display New Features
#--------------------------------------------------------------

cat("\nNew Features Created Successfully\n")

cat("\nNew Columns\n")
print(names(mydata))

#--------------------------------------------------------------
# Save Featured Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

write_csv(mydata, FEATURED_DATA)

cat("\nFeatured Dataset Saved Successfully\n")

cat("\nLocation :\n")
cat(FEATURED_DATA, "\n")

cat("\nFinal Dataset Dimensions\n")
cat("---------------------------------\n")

cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

display_title("FEATURE ENGINEERING COMPLETED")