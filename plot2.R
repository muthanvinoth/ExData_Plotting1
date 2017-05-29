 hpc<-read.table("household_power_consumption.txt",header = TRUE, sep=";",colClasses=c("Global_reactive_power"="numeric"),na.strings="?")
 
 hpcsubset<-subset(hpc,Date %in% c("1/2/2007","2/2/2007"))
 
 hpcdt_tmp<-paste(hpcsubset$Date,hpcsubset$Time)
 
 hpcdym_tmp<-strptime(hpcdt_tmp,format="%d/%m/%Y %H:%M:%S")

 png(file="Plot2.png",height=480,width=480)
 
 plot( hpcdym_tmp,hpcsubset$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="")

 dev.off()
