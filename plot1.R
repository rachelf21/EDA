##Read and extract data for chosen dates in february
        file<-"household_power_consumption.txt"
        labels<-read.table(file,nrows=1, sep=";", colClasses="character")
        data<-read.table(file, header=TRUE, sep=";", skip = grepl("1/2/2007", readLines(file)), nrows=2880)
        colnames(data)<-labels


## create first chart
png("plot1.png")
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts")
dev.off()

