# source the function that reads qPCR data produced by the qPCR machine
source("Code/Functions/Read_qPCR_data.R")

# Set the working directory to the folder containing qPCR primary data files
# These are data from experimental infections with Eimeria falciformis
setwd("Data/Raw/Eimeria_Quant2/qPCR/qPCR_Primary/")

# Step 1: List all qPCR CSV files in the directory
# Creates a list of all file names in the specified directory
list_faeces <- as.list(list.files())

#to all a function to perform itself on the list, it is transformed into a vector
list_names <- as.vector(unlist(list_faeces))


# Apply the function to all qPCR files and collect results in a list
list_results <- lapply(list_names, read_qPCR_file)

#bind/merge all indivual csv files into one
#  Reduce a list to a single value by iteratively applying a binary function.
primary_quant2 <- Reduce(rbind, list_results)

#removes duplicates
primary_quant2 <- unique(primary_quant2)  


# remove intermediate files
rm(list_faeces, list_results, list_names)

# revert the environment
setwd("~/GitHub/Eimeria_load_ResTol/")
