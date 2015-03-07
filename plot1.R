# Call the script that loads and transforms the data
source('prepare_dataset.R')

library(png)
# Plot a histogram for the Global Active Power, set the color,
# the labels and the title, and format the size of the fonts.
hist(dset$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power",
     col = 'orangered', cex.lab = 0.75, cex.main = 0.8, cex.axis = 0.7)
dev.copy(png, file = 'plot1.png')
dev.off()