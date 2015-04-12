require(dplyr)
data <- read.table("household_power_consumption.txt",sep=';',header=TRUE)
data <- tbl_df(data)