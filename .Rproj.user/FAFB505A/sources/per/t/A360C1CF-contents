###############################################################
# Project : Google Play Store EDA
# File    : config.R
# Purpose : Load libraries and define project paths
###############################################################

# Install packages (Run only once)
# install.packages(c("dplyr","ggplot2","readr","stringr","tidyr"))

# Load Libraries
library(dplyr)
library(ggplot2)
library(readr)
library(stringr)
library(tidyr)
library(corrplot)

#--------------------------------------------------------------
# Project Paths
#--------------------------------------------------------------

RAW_DATA <- "data/raw/googleplaystore.csv"

PROCESSED_DATA <- "data/processed/googleplaystore_cleaned.csv"

PLOTS_PATH <- "outputs/plots"

REPORTS_PATH <- "outputs/reports"

STATISTICS_PATH <- "outputs/statistics"

###############################################################
# Load Custom Functions
###############################################################

source("src/functions/helpers.R")
source("src/functions/clean_price.R")
source("src/functions/clean_installs.R")
source("src/functions/clean_size.R")
source("src/functions/mode_function.R")