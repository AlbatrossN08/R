library(dplyr)
library(hflights)

flights <- hflights

d1 <- filter(flights, Month == 1 & DayofMonth == 1)
d1
d2 <- filter(flights, UniqueCarrier %in% c("AA", "UA"))
d2
