# Google Play Store Exploratory Data Analysis using R

---

# Table of Contents

1. Project Overview
2. Problem Statement
3. Objectives
4. Dataset Information
5. Technology Stack
6. Project Folder Structure
7. Project Workflow
8. Data Loading
9. Data Understanding
10. Data Cleaning
11. Feature Engineering
12. Descriptive Statistics
13. Data Visualization
14. Correlation Analysis
15. Business Insights
16. Data Normalization
17. Outputs Generated
18. Key Findings
19. Conclusion
20. Future Improvements

---

# 1. Project Overview

## Project Overview

The Google Play Store Exploratory Data Analysis (EDA) project is an end-to-end data analytics project developed using the R programming language. The objective of this project is to analyze application data from the Google Play Store to understand app characteristics, user engagement, pricing patterns, and category-wise trends.

The project follows a structured EDA workflow consisting of data loading, data understanding, data cleaning, feature engineering, descriptive statistical analysis, data visualization, correlation analysis, business insight generation, data normalization, and automated report generation.

A modular project architecture was adopted, where each phase of the analysis is implemented as an independent R script. This approach improves readability, maintainability, and reusability while following professional software development practices.

The final project generates cleaned datasets, engineered features, descriptive statistics, multiple visualizations, correlation reports, business insights, normalized datasets, and automated project reports that can support analytical decision-making.

# 2. Problem Statement

## Problem Statement

The Google Play Store contains thousands of mobile applications across multiple categories, each with different ratings, reviews, installs, prices, and content classifications. Due to the large volume of data, it becomes difficult to identify meaningful trends and patterns without performing systematic analysis.

Businesses, developers, and analysts require insights into user preferences, app popularity, pricing strategies, and category performance to make informed decisions. Raw data alone cannot provide these insights because it often contains missing values, duplicate records, inconsistent formats, and unstructured information.

This project addresses these challenges by performing a complete Exploratory Data Analysis (EDA) workflow. The analysis transforms raw application data into meaningful information through data cleaning, feature engineering, statistical analysis, visualization, correlation analysis, normalization, and business insight generation.

# 3. Objectives


## Objectives

The primary objectives of this project are:

- Perform data cleaning to improve data quality.
- Remove duplicate records and handle missing values.
- Convert inconsistent data into structured formats.
- Engineer new features for deeper analysis.
- Compute descriptive statistical measures.
- Visualize important trends using charts and graphs.
- Analyze relationships among numerical variables.
- Generate business-oriented insights from the dataset.
- Normalize numerical features using Min-Max and Z-Score techniques.
- Build a modular and reusable R-based EDA pipeline.
- Generate automated reports for project documentation.

# 4. Dataset Information


## Dataset Information

| Attribute | Description |
|-----------|-------------|
| Dataset Name | Google Play Store Dataset |
| File Format | CSV |
| Programming Language | R |
| Original Records | 10,841 |
| Clean Records | 7,424 |
| Original Features | 13 |
| Engineered Features | 4 |
| Final Features | 17 |

### Main Attributes

- App
- Category
- Rating
- Reviews
- Size
- Installs
- Type
- Price
- Content Rating
- Genres
- Last Updated
- Current Version
- Android Version

# 5. Technology Stack


## Technology Stack

### Programming Language

- R

### Libraries

- dplyr
- ggplot2
- readr
- tidyr
- stringr
- corrplot

### Development Environment

- RStudio
- Visual Studio Code

### Version Control

- Git
- GitHub

### Dataset Format

- CSV

### Output Formats

- CSV
- PNG
- TXT
- Markdown


# 6. Project Folder Structure

## Project Folder Structure

The project follows a modular folder structure to improve readability, maintainability, and scalability.

```text
google-playstore-eda-r
│
├── data
│   ├── raw
│   │   └── googleplaystore.csv
│   │
│   └── processed
│       ├── googleplaystore_cleaned.csv
│       ├── googleplaystore_featured.csv
│       ├── googleplaystore_minmax.csv
│       └── googleplaystore_zscore.csv
│
├── docs
│   ├── architecture.drawio
│   ├── workflow.drawio
│   └── eda_process.png
│
├── outputs
│   ├── plots
│   ├── reports
│   └── statistics
│
├── screenshots
│
├── src
│   ├── functions
│   ├── config.R
│   ├── 01_data_loading.R
│   ├── 02_data_understanding.R
│   ├── 03_data_cleaning.R
│   ├── 04_feature_engineering.R
│   ├── 05_descriptive_statistics.R
│   ├── 06_visualization.R
│   ├── 07_correlation_analysis.R
│   ├── 08_business_insights.R
│   ├── 09_normalization.R
│   └── 10_generate_report.R
│
├── README.md
├── PROJECT_REPORT.md
├── LICENSE
└── .gitignore
```

This folder organization separates source code, datasets, generated outputs, documentation, and project assets, making the project easy to understand and maintain.


# 7. Project Workflow

## Project Workflow

The project follows a sequential Exploratory Data Analysis workflow.

```text
Raw Dataset
      │
      ▼
Data Loading
      │
      ▼
Data Understanding
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Descriptive Statistics
      │
      ▼
Data Visualization
      │
      ▼
Correlation Analysis
      │
      ▼
Business Insights
      │
      ▼
Data Normalization
      │
      ▼
Report Generation
```

Each stage of the workflow is implemented as an independent R module. This modular approach allows individual components to be executed, tested, and maintained separately while preserving a clear end-to-end analysis pipeline.


# 8. Data Loading

## Data Loading

The first stage of the project loads the raw Google Play Store dataset into the R environment.

### Tasks Performed

- Imported the CSV dataset using the `readr` package.
- Configured project paths through a centralized configuration file.
- Verified successful data loading.
- Stored the dataset in a reusable data frame for further processing.

### Output

- Raw dataset successfully loaded.
- Dataset dimensions verified.
- Project configuration initialized.


# 9. Data Understanding

## Data Understanding

Before cleaning the dataset, an initial exploration was performed to understand its structure and quality.

### Analysis Performed

- Examined dataset dimensions.
- Reviewed column names.
- Identified data types.
- Detected duplicate records.
- Calculated missing values.
- Identified numerical columns.
- Identified categorical columns.
- Measured unique values in each attribute.

### Outcome

This analysis provided a clear understanding of the dataset and identified the preprocessing steps required before performing statistical analysis.

# 10. Data Cleaning


## Data Cleaning

The raw dataset contained duplicate records, missing values, and inconsistent data formats. Data cleaning was performed to improve data quality.

### Cleaning Operations

- Removed duplicate records.
- Handled missing values.
- Converted numerical columns into proper numeric formats.
- Cleaned the `Price` column.
- Standardized the `Size` column.
- Converted the `Installs` column into numeric values.
- Removed unnecessary symbols and text.
- Generated a cleaned dataset for downstream analysis.

### Output

- Clean dataset generated.
- Improved data consistency.
- Reduced noise in the dataset.


# 11. Feature Engineering

## Feature Engineering

Feature engineering was performed to enrich the dataset with additional attributes that improve analysis and support business insights.

### New Features Created

| Feature | Description |
|---------|-------------|
| Is_Free | Identifies whether an app is Free or Paid |
| Rating_Category | Groups ratings into categories such as Excellent, Good, Average, and Poor |
| Install_Category | Categorizes apps based on installation counts |
| Size_Category | Categorizes applications based on file size |

### Benefits

- Improved data interpretation.
- Simplified business analysis.
- Enhanced visualization.
- Enabled category-based comparisons.

# 12. Descriptive Statistics


## Descriptive Statistics

Descriptive statistical analysis was performed on all numerical variables to summarize the characteristics of the dataset.

### Statistical Measures

- Mean
- Median
- Mode
- Minimum
- Maximum
- Range
- Variance
- Standard Deviation
- First Quartile (Q1)
- Third Quartile (Q3)
- Interquartile Range (IQR)

### Output

The computed statistics were exported as a CSV file for future reference and reporting.

**Generated File**

```
outputs/statistics/descriptive_statistics.csv
```


# 13. Data Visualization

## Data Visualization

Several visualizations were created to understand the distribution of variables, identify trends, and communicate insights effectively.

### Visualizations Generated

- Rating Distribution Histogram
- Rating Box Plot
- Reviews vs Rating Scatter Plot
- Top Categories
- Free vs Paid Apps
- Top Installed Categories
- Price Distribution
- Paid Apps Price Distribution
- Rating by Category
- Content Rating Distribution
- Genre Distribution
- Top Reviewed Apps

### Output Location

```
outputs/plots/
```

These visualizations help identify user behavior, application popularity, pricing strategies, and category-wise performance.

# 14. Correlation Analysis

## Correlation Analysis

Correlation analysis was performed to measure relationships among numerical variables.

### Variables Included

- Rating
- Reviews
- Size
- Installs
- Price

### Method

Pearson Correlation Coefficient

### Output

- Correlation Matrix
- Correlation Heatmap

**Generated Files**

```
outputs/statistics/correlation_matrix.csv

outputs/plots/correlation_heatmap.png
```

Correlation analysis helps identify positive and negative relationships between application metrics, supporting deeper analytical insights.


# 15. Business Insights

## Business Insights

The analysis generated several business-oriented insights from the Google Play Store dataset.

### Major Findings

- The **Family** category contains the highest number of applications.
- Most applications on the Google Play Store are **Free**.
- Paid applications represent only a small percentage of the dataset.
- The average application rating is approximately **4.17**.
- The average application size is approximately **37.57 MB**.
- The average application price is approximately **$1.12**.
- Applications with higher review counts generally receive higher installation counts.
- Price has very little correlation with application ratings.
- User engagement is primarily driven by free applications.

### Output

Business insights were automatically generated and exported as:

```
outputs/reports/business_insights.txt
```

# 16. Data Normalization

## Data Normalization

To prepare the dataset for machine learning and advanced analytical techniques, numerical variables were normalized.

### Normalization Methods

#### Min-Max Normalization

Scales numerical values between **0 and 1** while preserving relative differences.

#### Z-Score Normalization

Transforms numerical values so that each variable has:

- Mean = 0
- Standard Deviation = 1

### Normalized Variables

- Rating
- Reviews
- Size
- Installs
- Price

### Generated Files

```
data/processed/googleplaystore_minmax.csv

data/processed/googleplaystore_zscore.csv
```


# 17. Outputs Generated

## Outputs Generated

The project automatically generates multiple outputs during execution.

### Processed Datasets

- Cleaned Dataset
- Featured Dataset
- Min-Max Normalized Dataset
- Z-Score Normalized Dataset

### Reports

- Business Insights Report
- Final Project Report

### Statistics

- Descriptive Statistics
- Correlation Matrix

### Visualizations

- Rating Histogram
- Rating Box Plot
- Scatter Plot
- Top Categories
- Genre Distribution
- Price Distribution
- Content Rating Distribution
- Top Installed Categories
- Top Reviewed Applications
- Correlation Heatmap
- Additional analytical charts

All generated outputs are organized into dedicated folders for easy access.

# 18. Key Findings

## Key Findings

The analysis produced several meaningful observations:

- Most Google Play Store applications are available free of cost.
- The Family category dominates the dataset.
- Applications with higher review counts generally have significantly higher installation counts.
- Ratings remain consistently high across most application categories.
- Price has minimal influence on user ratings.
- Feature engineering simplified category-based analysis.
- Data normalization prepared the dataset for future predictive modeling.
- Automated reporting improved reproducibility and documentation.

# 19. Conclusion

## Conclusion

This project successfully implemented a complete Exploratory Data Analysis (EDA) workflow using R.

Starting from raw Google Play Store data, the project performed data cleaning, feature engineering, descriptive statistical analysis, visualization, correlation analysis, business insight generation, normalization, and automated report generation.

The modular architecture improves code organization, readability, and maintainability while demonstrating best practices in data analytics.

The generated outputs provide valuable insights into application trends, user behavior, pricing strategies, and category performance. The project serves as a strong foundation for future predictive analytics and machine learning applications.

# 20. Future Improvements

## Future Improvements

Potential enhancements for future versions include:

- Interactive dashboards using Shiny.
- Predictive models for application ratings.
- Recommendation systems for app categories.
- Time-series analysis using application update history.
- Automated report generation in PDF format.
- Deployment as a web-based analytics application.
- Integration with cloud storage and databases.
- Real-time analysis using live Google Play Store data.