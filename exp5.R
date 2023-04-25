library(dplyr)
library(hflights)

flights <- hflights

d4 <- select(flights, DepTime, ArrTime, FlightNum)
d4
d5 <- select(flights, -DepTime, -ArrTime, -FlightNum)
d5
