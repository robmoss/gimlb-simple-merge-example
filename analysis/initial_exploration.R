#!/usr/bin/Rscript --vanilla

input_file <- file.path('input_data', 'data.csv')
output_file <- file.path('outputs', 'summary.csv')

data <- read.csv(input_file, header = TRUE)

summary_statistics <- list(
    mean = mean(data$value),
    median = median(data$value),
    minimum = min(data$value),
    maximum = max(data$value),
    first = data$value[1],
    last = data$value[nrow(data)])

summary_table <- data.frame(
    statistic = names(summary_statistics),
    value = as.numeric(summary_statistics))

write.csv(summary_table, output_file, quote = FALSE, row.names = FALSE)
