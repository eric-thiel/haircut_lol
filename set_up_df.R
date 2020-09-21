## haircut start 

dates = c(Sys.Date()-5,Sys.Date()-4,Sys.Date()-3,Sys.Date()-2,Sys.Date()-1)
haircut = c("no","no","no","no","no")

frame = data.frame(dates, haircut)


write.csv(haircut, file = gzfile("haircuts.csv.gz"), row.names = FALSE)

0.97^30






