df <- read.table('household_power_consumption.txt',sep=';',header=TRUE,na.strings='?')
cleandf <- df[which(df$Date=='1/2/2007'|df$Date=='2/2/2007'),] 
rm(df)
library(lubridate)
cleandf$Datetime <- with(cleandf, dmy(Date) + hms(Time))
png(filename='plot2.png',width=480,height=480)
plot(cleandf$Datetime,cleandf$Global_active_power,xlab='',ylab='Global active power (kilowatts)',type='l')
dev.off()
