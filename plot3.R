# Call the script that loads and transforms the data
source('prepare_dataset.R')

library(png)
# Plot the 3 Energy sub metering variables as functions of the date/time using
# continuous lines of different colors, set the labels, format the size of the fonts,
# and add a legend at the top-right corner of the plot.
plot(dset$Date_time, dset$Sub_metering_1, xlab = '', ylab = 'Energy sub metering',
     type = 'l', cex.lab = 0.75, cex.axis = 0.75)
lines(dset$Date_time, dset$Sub_metering_2, col = 'orangered')
lines(dset$Date_time, dset$Sub_metering_3, col = 'blue')
legend('topright', cex = 0.75, y.intersp = 0.6,
       col = c('black', 'orangered', 'blue'), lty = c(1, 1, 1),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.copy(png, file = 'plot3.png')
dev.off()