###############################################################
# Project : Google Play Store EDA
# File    : 08_business_insights.R
# Purpose : Generate Business Insights
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("BUSINESS INSIGHTS MODULE")

#--------------------------------------------------------------
# Load Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

#--------------------------------------------------------------
# Insight 1
#--------------------------------------------------------------

top_category <-
  mydata %>%
  count(Category) %>%
  arrange(desc(n)) %>%
  slice(1)

cat("\n1. Category with the Highest Number of Apps\n")
print(top_category)

#--------------------------------------------------------------
# Insight 2
#--------------------------------------------------------------

free_apps <- sum(mydata$Is_Free == "Free")
paid_apps <- sum(mydata$Is_Free == "Paid")

cat("\n2. Free Apps :", free_apps)
cat("\n3. Paid Apps :", paid_apps)

#--------------------------------------------------------------
# Insight 3
#--------------------------------------------------------------

highest_installs <-
  mydata %>%
  arrange(desc(Installs)) %>%
  slice(1)

cat("\n\n4. App with Highest Installs\n")
print(highest_installs[,c("App","Installs")])

#--------------------------------------------------------------
# Insight 4
#--------------------------------------------------------------

highest_reviews <-
  mydata %>%
  arrange(desc(Reviews)) %>%
  slice(1)

cat("\n5. App with Highest Reviews\n")
print(highest_reviews[,c("App","Reviews")])

#--------------------------------------------------------------
# Insight 5
#--------------------------------------------------------------

highest_price <-
  mydata %>%
  arrange(desc(Price)) %>%
  slice(1)

cat("\n6. Most Expensive App\n")
print(highest_price[,c("App","Price")])

#--------------------------------------------------------------
# Insight 6
#--------------------------------------------------------------

cat("\n7. Average Rating :",
    round(mean(mydata$Rating),2))

cat("\n8. Average Reviews :",
    round(mean(mydata$Reviews),0))

cat("\n9. Average Size :",
    round(mean(mydata$Size),2),"MB")

cat("\n10. Average Price : $",
    round(mean(mydata$Price),2))

#--------------------------------------------------------------
# Insight 7
#--------------------------------------------------------------

content_rating <-
  mydata %>%
  count(`Content Rating`) %>%
  arrange(desc(n)) %>%
  slice(1)

cat("\n\n11. Most Common Content Rating\n")
print(content_rating)

#--------------------------------------------------------------
# Insight 8
#--------------------------------------------------------------

top_genre <-
  mydata %>%
  count(Genres) %>%
  arrange(desc(n)) %>%
  slice(1)

cat("\n12. Most Common Genre\n")
print(top_genre)

#--------------------------------------------------------------
# Save Report
#--------------------------------------------------------------

sink("outputs/reports/business_insights.txt")

cat("GOOGLE PLAY STORE BUSINESS INSIGHTS\n\n")

cat("Total Apps :", nrow(mydata), "\n")

cat("Free Apps :", free_apps, "\n")

cat("Paid Apps :", paid_apps, "\n")

cat("Average Rating :", round(mean(mydata$Rating),2), "\n")

cat("Average Price :", round(mean(mydata$Price),2), "\n")

cat("Average Size :", round(mean(mydata$Size),2), "MB\n")

cat("Top Category :", top_category$Category, "\n")

cat("Top Genre :", top_genre$Genres, "\n")

sink()

cat("\n\nBusiness Insights Saved Successfully\n")

display_title("BUSINESS INSIGHTS COMPLETED")