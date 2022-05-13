#!/usr/bin/Rscript --vanilla

input_files <- c(
    file.path('input_data', 'first_data_set.csv'),
    file.path('input_data', 'second_data_set.csv'))
output_file <- file.path('outputs', 'summary.csv')

summarise_data_file <- function(input_file) {
    data <- read.csv(input_file, header = TRUE)

    summary_statistics <- list(
        mean = mean(data$value),
        median = median(data$value),
        minimum = min(data$value),
        maximum = max(data$value),
        first = data$value[1],
        last = data$value[nrow(data)])

    summary_table <- data.frame(
        data_set = basename(input_file),
        statistic = names(summary_statistics),
        value = as.numeric(summary_statistics))

    summary_table
}

summary_tables <- lapply(input_files, summarise_data_file)

summary_table <- do.call(rbind, summary_tables)

write.csv(summary_table, output_file, quote = FALSE, row.names = FALSE)
