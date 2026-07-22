###############################################################
# Project : Google Play Store EDA
# File    : 07_correlation_analysis.R
# Purpose : Correlation Analysis
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("CORRELATION ANALYSIS MODULE")

#--------------------------------------------------------------
# Load Featured Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

#--------------------------------------------------------------
# Select Numeric Variables
#--------------------------------------------------------------

numeric_data <-
  mydata %>%
  select(Rating,
         Reviews,
         Size,
         Installs,
         Price)

#--------------------------------------------------------------
# Correlation Matrix
#--------------------------------------------------------------

cor_matrix <-
  cor(
    numeric_data,
    use = "complete.obs",
    method = "pearson"
  )

cat("\nCorrelation Matrix\n")
print(round(cor_matrix,3))

#--------------------------------------------------------------
# Save Correlation Matrix
#--------------------------------------------------------------

write.csv(
  cor_matrix,
  "outputs/statistics/correlation_matrix.csv"
)

#--------------------------------------------------------------
# Save Heatmap
#--------------------------------------------------------------

png(
  filename = "outputs/plots/correlation_heatmap.png",
  width = 900,
  height = 700
)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  tl.srt = 45,
  number.cex = 0.8
)

dev.off()

cat("\nCorrelation Matrix Saved Successfully\n")
cat("\nHeatmap Saved Successfully\n")

display_title("CORRELATION ANALYSIS COMPLETED")