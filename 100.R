library(dplyr)
library(hflights)

# read hflights dataset
flights <- hflights

# select UniqueCarrier, DepDelay attributes having Time values
d6 <- flights %>% select(UniqueCarrier, DepDelay, contains("Time")) %>% filter(DepDelay > 60)
d6
# filter DepDelay greater than 60 and select Dep
d7 <- d6 %>% select(contains("Dep")) %>% filter(DepDelay > 100)
d7
