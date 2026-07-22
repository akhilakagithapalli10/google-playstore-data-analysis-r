###############################################################
# Project : Google Play Store EDA
# File    : 06_visualization.R
# Purpose : Generate and Save Visualizations
###############################################################

#--------------------------------------------------------------
# Load Configuration
#--------------------------------------------------------------

source("src/config.R")

display_title("DATA VISUALIZATION MODULE")

#--------------------------------------------------------------
# Load Featured Dataset
#--------------------------------------------------------------

FEATURED_DATA <- "data/processed/googleplaystore_featured.csv"

mydata <- read_csv(FEATURED_DATA)

cat("\nDataset Loaded Successfully\n")
cat("Rows    :", nrow(mydata), "\n")
cat("Columns :", ncol(mydata), "\n")

#==============================================================
# 1. Rating Distribution
#==============================================================

p1 <- ggplot(mydata, aes(Rating)) +
  geom_histogram(binwidth = 0.2,
                 fill = "steelblue",
                 color = "black") +
  labs(title = "Distribution of App Ratings",
       x = "Rating",
       y = "Frequency")

ggsave("outputs/plots/rating_histogram.png",
       p1,width=8,height=5)

#==============================================================
# 2. Rating Boxplot
#==============================================================

p2 <- ggplot(mydata, aes(y = Rating)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Rating Box Plot",
       y = "Rating")

ggsave("outputs/plots/rating_boxplot.png",
       p2,width=6,height=5)

#==============================================================
# 3. Reviews vs Rating
#==============================================================

p3 <- ggplot(mydata,
             aes(Reviews, Rating)) +
  geom_point(alpha=.4,
             color="blue") +
  labs(title="Reviews vs Rating",
       x="Reviews",
       y="Rating")

ggsave("outputs/plots/reviews_rating_scatter.png",
       p3,width=8,height=5)

#==============================================================
# 4. Top 10 Categories
#==============================================================

category_plot <-
  mydata %>%
  count(Category) %>%
  arrange(desc(n)) %>%
  slice_head(n=10)

p4 <- ggplot(category_plot,
             aes(reorder(Category,n),n)) +
  geom_col(fill="darkgreen") +
  coord_flip() +
  labs(title="Top 10 Categories",
       x="Category",
       y="Apps")

ggsave("outputs/plots/top_categories.png",
       p4,width=8,height=6)

#==============================================================
# 5. Free vs Paid Apps
#==============================================================

free_paid <-
  mydata %>%
  count(Is_Free)

p5 <- ggplot(free_paid,
             aes(Is_Free,n,fill=Is_Free)) +
  geom_col() +
  labs(title="Free vs Paid Apps",
       x="App Type",
       y="Count")

ggsave("outputs/plots/free_vs_paid.png",
       p5,width=7,height=5)

#==============================================================
# 6. Rating Category Distribution
#==============================================================

rating_plot <-
  mydata %>%
  count(Rating_Category)

p6 <- ggplot(rating_plot,
             aes(Rating_Category,n,fill=Rating_Category)) +
  geom_col() +
  labs(title="Rating Category Distribution",
       x="Rating Category",
       y="Apps")

ggsave("outputs/plots/rating_category.png",
       p6,width=7,height=5)

#==============================================================
# 7. Install Category Distribution
#==============================================================

install_plot <-
  mydata %>%
  count(Install_Category)

p7 <- ggplot(install_plot,
             aes(Install_Category,n,fill=Install_Category)) +
  geom_col() +
  labs(title="Install Category Distribution",
       x="Install Category",
       y="Apps")

ggsave("outputs/plots/install_category.png",
       p7,width=7,height=5)

#==============================================================
# 8. Content Rating Distribution
#==============================================================

content_plot <-
  mydata %>%
  count(`Content Rating`)

p8 <- ggplot(content_plot,
             aes(reorder(`Content Rating`,n),n)) +
  geom_col(fill="steelblue") +
  coord_flip() +
  labs(title="Content Rating Distribution",
       x="Content Rating",
       y="Apps")

ggsave("outputs/plots/content_rating.png",
       p8,width=8,height=5)

#==============================================================
# 9. Top Genres
#==============================================================

genre_plot <-
  mydata %>%
  count(Genres) %>%
  arrange(desc(n)) %>%
  slice_head(n=10)

p9 <- ggplot(genre_plot,
             aes(reorder(Genres,n),n)) +
  geom_col(fill="purple") +
  coord_flip() +
  labs(title="Top 10 Genres",
       x="Genre",
       y="Apps")

ggsave("outputs/plots/top_genres.png",
       p9,width=8,height=6)

#==============================================================
# 10. Top Installed Apps
#==============================================================

top_install <-
  mydata %>%
  arrange(desc(Installs)) %>%
  slice_head(n=10)

p10 <- ggplot(top_install,
              aes(reorder(App,Installs),Installs)) +
  geom_col(fill="darkgreen") +
  coord_flip() +
  labs(title="Top Installed Apps",
       x="App",
       y="Installs")

ggsave("outputs/plots/top_installed_apps.png",
       p10,width=9,height=6)

#==============================================================
# 11. Price Distribution
#==============================================================

p11 <- ggplot(mydata,
              aes(Price)) +
  geom_histogram(binwidth=1,
                 fill="orange",
                 color="black") +
  labs(title="Price Distribution",
       x="Price",
       y="Frequency")

ggsave("outputs/plots/price_distribution.png",
       p11,width=8,height=5)

#==============================================================
# 12. Size Distribution
#==============================================================

p12 <- ggplot(mydata,
              aes(Size)) +
  geom_histogram(binwidth=5,
                 fill="skyblue",
                 color="black") +
  labs(title="App Size Distribution",
       x="Size (MB)",
       y="Frequency")

ggsave("outputs/plots/size_distribution.png",
       p12,width=8,height=5)

#==============================================================
# 13. Top Reviewed Apps
#==============================================================

review_plot <-
  mydata %>%
  arrange(desc(Reviews)) %>%
  slice_head(n=10)

p13 <- ggplot(review_plot,
              aes(reorder(App,Reviews),Reviews)) +
  geom_col(fill="red") +
  coord_flip() +
  labs(title="Top Reviewed Apps",
       x="App",
       y="Reviews")

ggsave("outputs/plots/top_reviewed_apps.png",
       p13,width=9,height=6)

#==============================================================
# 14. Top Categories by Average Rating
#==============================================================

avg_rating <-
  mydata %>%
  group_by(Category) %>%
  summarise(Average_Rating=mean(Rating,na.rm=TRUE),
            .groups="drop") %>%
  arrange(desc(Average_Rating)) %>%
  slice_head(n=10)

p14 <- ggplot(avg_rating,
              aes(reorder(Category,Average_Rating),
                  Average_Rating)) +
  geom_col(fill="darkorange") +
  coord_flip() +
  labs(title="Top Categories by Average Rating",
       x="Category",
       y="Average Rating")

ggsave("outputs/plots/category_average_rating.png",
       p14,width=8,height=6)

#==============================================================
# 15. Paid Apps Price Distribution
#==============================================================

paid_apps <-
  mydata %>%
  filter(Price>0)

p15 <- ggplot(paid_apps,
              aes(Price)) +
  geom_histogram(binwidth=2,
                 fill="darkred",
                 color="black") +
  labs(title="Paid Apps Price Distribution",
       x="Price",
       y="Frequency")

ggsave("outputs/plots/paid_apps_price_distribution.png",
       p15,width=8,height=5)

#==============================================================
# Module Completed
#==============================================================

cat("\n============================================\n")
cat("Total Visualizations Generated : 15\n")
cat("Location : outputs/plots/\n")
cat("============================================\n")

display_title("DATA VISUALIZATION COMPLETED")