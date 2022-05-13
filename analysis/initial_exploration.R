#!/usr/bin/Rscript --vanilla

input_file <- file.path('input_data', 'data.csv')
output_file <- file.path('outputs', 'summary.csv')

data <- read.csv(input_file, header = TRUE)

mean_gradient <- function(data) {
    time_start <- data$time[1]
    time_end <- data$time[nrow(data)]
    value_start <- data$value[1]
    value_end <- data$value[nrow(data)]
    (value_end - value_start) / (time_end - time_start)
}

summary_statistics <- list(
    mean = mean(data$value),
    median = median(data$value),
    mean_gradient = mean_gradient(data))

summary_table <- data.frame(
    statistic = names(summary_statistics),
    value = as.numeric(summary_statistics))

write.csv(summary_table, output_file, quote = FALSE, row.names = FALSE)
