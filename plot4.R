# Call the script that loads and transforms the data
source('prepare_dataset.R')

library(png)
par(mfcol = c(2, 2), cex.lab = 0.75, cex.axis = 0.75)

## Top-left (same as plot 2)
plot(dset$Date_time, dset$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')

## Bottom-left (same as plot 3)
plot(dset$Date_time, dset$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(dset$Date_time, dset$Sub_metering_2, col = 'orangered')
lines(dset$Date_time, dset$Sub_metering_3, col = 'blue')
legend('topright', cex = 0.75, y.intersp = 0.4, bty = 'n',
       col = c('black', 'orangered', 'blue'), lty = c(1, 1, 1),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

## Top-right
plot(dset$Date_time, dset$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

## Bottom-right
plot(dset$Date_time, dset$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global Reactive Power')

# Save the plots to a PNG file
dev.copy(png, file = 'plot4.png')
dev.off()