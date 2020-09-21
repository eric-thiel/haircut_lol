## haircut start 
library(lubridate)

dates = c(Sys.Date()-5,Sys.Date()-4,Sys.Date()-3,Sys.Date()-2,Sys.Date()-1)
haircut = c("no","no","no","no","no")

frame = data.frame(dates, haircut)

frame$dates = ymd(frame$dates)
frame$haircut = as.character(frame$haircut)

write.csv(frame, file = gzfile("haircuts.csv.gz"), row.names = FALSE)

0.97^30






