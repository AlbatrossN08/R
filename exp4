library(dplyr)
library(hflights)
hflights
flights=tbl_df(hflights)
flights
d1= filter(flights, Month==1 & DayofMonth==1)
d1
d2= filter(flights, UniqueCarrier=="AA" | UniqueCarrier=="UA" )
d2
d3= filter(flights, UniqueCarrier %in% c("AA",
                                         "UA"))
d3
d4=select(flights, DepTime, ArrTime,
          FlightNum)
d4
d5=select(flights, -DepTime, -ArrTime, -
            FlightNum)
d5
d6= select(flights, Year:DepTime, contains("Taxi"), contains("Delay"))
d6
filter(select(flights, UniqueCarrier, DepDelay), DepDelay >
         60)
d6=flights %>%select(UniqueCarrier, DepDelay,contains("Time"))%>%filter(DepDelay > 60) %>%
  select(contains("Dep")) %>%
  filter(DepDelay>100)
d6
d7=flights %>%
  select(UniqueCarrier, DepDelay) %>%
  arrange(UniqueCarrier,desc(DepDelay))
d7
flights %>%group_by(Dest,Month)%>%
  summarise(avg_delay = mean(ArrDelay,na.rm=T))
