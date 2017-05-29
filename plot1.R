 hpc<-read.table("household_power_consumption.txt",header = TRUE, sep=";",colClasses=c("Global_reactive_power"="numeric"),na.strings="?")
 
 hpcsubset<-subset(hpc,Date %in% c("1/2/2007","2/2/2007"))

 png(file="Plot1.png",height=480,width=480)

 hist(hpcsubset$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(Kilowatts)",ylab="Frequency")

 dev.off()
