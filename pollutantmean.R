pollutantmean <- function(directory, pollutant, id = 1:332) {
  lfiles <- list.files(directory,full.names = TRUE)
  data=data.frame()
  for (i in id) {
    data <- rbind(data,read.csv(lfiles[i]))
  }
  print(mean(data[,pollutant],na.rm=T))
}
