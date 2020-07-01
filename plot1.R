df <- read.table('household_power_consumption.txt',sep=';',header=TRUE,na.strings='?')
cleandf <- df[which(df$Date=='1/2/2007'|df$Date=='2/2/2007'),] 
