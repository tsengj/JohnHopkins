complete <- function(directory,id=1:332) {
  lfiles <- list.files(directory,full.names = TRUE)
  data=data.frame()
  for (i in id) {
    data <- rbind(data,read.csv(lfiles[i]))
  }
  data <- data[complete.cases(data),] #filter to complete cases
  data <- data.frame(table(data$ID)) #count by IDs
  colnames(data) <- c('ID','NOBS') #rename
  print(data)
}


