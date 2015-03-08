# Call the script that loads and transforms the data
source('prepare_dataset.R')

library(png)
# Plot the Global Active Power as a function of the date/time using
# a continuous line, set the labels, and format the size of the fonts.
plot(dset$Date_time, dset$Global_active_power, type = 'l',
     xlab = '', ylab = 'Global Active Power (kilowatts)', cex.lab = 0.75, cex.axis = 0.75)
dev.copy(png, file = 'plot2.png')
dev.off()