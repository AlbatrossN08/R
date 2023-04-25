library(dplyr)
library(hflights)

# read hflights dataset
flights <- hflights

# group Dest, Month attributes and summarize grouped data with new attribute
d9 <- flights %>% group_by(Dest, Month) %>% summarise(avg_delay = mean(ArrDelay, na.rm = TRUE))
d9
