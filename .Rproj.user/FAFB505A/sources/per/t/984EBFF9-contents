###############################################################
# Project : Google Play Store EDA
# File    : 05_descriptive_statistics.R
# Purpose : Descriptive Statistics
###############################################################

# Load Configuration
source("src/config.R")

display_title("DESCRIPTIVE STATISTICS MODULE")

#--------------------------------------------------------------
# Load Featured Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

#--------------------------------------------------------------
# Select Numeric Columns
#--------------------------------------------------------------

numeric_data <- mydata %>%
  select(Rating, Reviews, Size, Installs, Price)

#--------------------------------------------------------------
# Empty Result Data Frame
#--------------------------------------------------------------

statistics <- data.frame(
  Variable = character(),
  Mean = numeric(),
  Median = numeric(),
  Mode = numeric(),
  Minimum = numeric(),
  Maximum = numeric(),
  Range = numeric(),
  SD = numeric(),
  Variance = numeric(),
  Q1 = numeric(),
  Q3 = numeric(),
  IQR = numeric(),
  stringsAsFactors = FALSE
)

#--------------------------------------------------------------
# Calculate Statistics
#--------------------------------------------------------------

for(col in names(numeric_data)){
  
  x <- numeric_data[[col]]
  
  statistics <- rbind(statistics,
                      data.frame(
                        
                        Variable = col,
                        
                        Mean = mean(x,na.rm=TRUE),
                        
                        Median = median(x,na.rm=TRUE),
                        
                        Mode = calculate_mode(x),
                        
                        Minimum = min(x,na.rm=TRUE),
                        
                        Maximum = max(x,na.rm=TRUE),
                        
                        Range = max(x,na.rm=TRUE)-min(x,na.rm=TRUE),
                        
                        SD = sd(x,na.rm=TRUE),
                        
                        Variance = var(x,na.rm=TRUE),
                        
                        Q1 = quantile(x,.25,na.rm=TRUE),
                        
                        Q3 = quantile(x,.75,na.rm=TRUE),
                        
                        IQR = IQR(x,na.rm=TRUE)
                        
                      ))
  
}

#--------------------------------------------------------------
# Display Result
#--------------------------------------------------------------

cat("\nDescriptive Statistics\n")
print(statistics)

#--------------------------------------------------------------
# Save Statistics
#--------------------------------------------------------------

write.csv(
  statistics,
  "outputs/statistics/descriptive_statistics.csv",
  row.names = FALSE
)

cat("\nStatistics Saved Successfully\n")

display_title("DESCRIPTIVE STATISTICS COMPLETED")