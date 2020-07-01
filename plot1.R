df <- read.table('household_power_consumption.txt',sep=';',header=TRUE,na.strings='?')
cleandf <- df[which(df$Date=='1/2/2007'|df$Date=='2/2/2007'),] 
rm(df)
library(lubridate)
cleandf$Datetime <- with(cleandf, dmy(Date) + hms(Time))
globactpow <- cleandf$Global_active_power
png(filename='plot1.png',width=480,height=480)
hist(globactpow,col='red',xlab='Global Active Power (kW)',main='Global Active Power')
dev.off()
