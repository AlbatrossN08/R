library(dplyr)
library(hflights)
# read hflights dataset
flights <- hflights
# select Year to DepTime attributes having Taxi and Delay values
d6 <- select(flights, Year:DepTime, contains("Taxi"), contains("Delay"))
d6
# select UniqueCarrier, DepDelay attributes and filter data for DepDelay > 60
d7 <- filter(select(flights, UniqueCarrier, DepDelay), DepDelay > 60)
d7
