#Third Chart
library(ggplot2)
library(tidyverse)
hatecrimelaws <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/Hate_crime_laws_by_state.csv")

Yes <- filter(hatecrimelaws, Race.Religion.Ethnicity == "YES")
No <- filter(hatecrimelaws, Race.Religion.Ethnicity == "NO")

States <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY")
WithLaws <- c(hatecrimelaws$Race.Religion.Ethnicity)

withlaws1 <- WithLaws

withlaws1 <- as.character(withlaws1)
withlaws1[withlaws1 == "YES"] <- 1     
withlaws1[withlaws1 == "NO"] <- 0      
Has_A_Law <- as.numeric(withlaws1)

Laws <- data.frame(States, Has_A_Law)

ggplot(data = Laws, aes(x = States, y = Has_A_Law)) + geom_bar(stat = "identity") 

