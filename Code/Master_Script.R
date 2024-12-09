# Master Script for Eimeria Load Resistance-Tolerance Analysis

# 1. Setup Environment
# Load necessary packages
pacman::p_load(dplyr, tidyverse, ggplot2, janitor, readr) 


setwd("~/GitHub/Eimeria_load_ResTol") # Set working directory

# 2. Import Data
# 2.1 Import data from infection experiments with E. ferrisi 
# The data has been processed and cleaned in the repository 
# https://github.com/derele/Eimeria_Quant/tree/master
Quant1 <- read.csv("Data/Raw/Eimeria_Quant/Sample_Data_OUT.csv")

# 2.2 Import data from infection experiments with E. falciformis
# The data has been produced by Dileshi Bulathsinhala under the supervision
# of Fay Webster and Emanuel Heitlinger
#2.2.2 Script to import each qPCR excel spreadsheet produced by the machine
# first we import, merge and clean the primary infections
if (1) source(file.path("Code/Cleaning/Merge_primary_infection_qPCR_data.R"))
# second we import, merge and clean the secondary infections
if (1) source(file.path("Code/Cleaning/Merge_secondary_infection_qPCR_data.R"))
# merge the primary and secondary together
