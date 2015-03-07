# This script reads and prepares the data set according to
# the project instructions and is 'sourced' by the plotting scripts.

library(lubridate)
library(dplyr)

# read the data file
dset <- read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')

# filter the dates of interest, merge date and time strings
# and convert the result to a date/time class
dset <- dset %>%
    filter(Date %in% c('1/2/2007', '2/2/2007')) %>%
    mutate(Date_time = paste(Date, Time, sep = ' ')) %>%
    mutate(Date_time = as.POSIXct(Date_time, format = '%d/%m/%Y %H:%M:%S')) %>%
    select(Date_time, Global_active_power:Sub_metering_3)