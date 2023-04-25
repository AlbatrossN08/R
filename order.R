library(dplyr)
library(hflights)

# read hflights dataset
flights <- hflights

# select UniqueCarrier, DepDelay attributes
d8a <- select(flights, UniqueCarrier, DepDelay)
d8a
# sort selected attributes in ascending order
d8b <- arrange(d8a, UniqueCarrier, DepDelay)
d8b
# sort selected attributes in descending order
d8c <- arrange(d8a, UniqueCarrier, desc(DepDelay))
d8c
