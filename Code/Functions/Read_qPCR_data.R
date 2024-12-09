# Function to process a single qPCR file
# This function:
# 1. Reads the CSV file.
# 2. Removes non-data rows (rows 1 to 24, assumed to contain metadata or headers).
# 3. Renames columns using the first row of actual data (row 25 after cleanup).
# 4. Adds a column indicating the file name (used as the plate identifier).
read_qPCR_file <- function(x) {
    df1 = read_csv(x)
    filename <- colnames(df1[2])
    df1 <- df1 %>%
        filter(!row_number() %in% c(1:24))
    colnames(df1) <- df1[1, ]
    df1 <- df1 %>% filter(!row_number() %in% 1)
    df1 <- df1 %>% dplyr::mutate(plate = filename)
}
