
pollutantmean <- function(directory, pollutant, id = 1:332) {
 
  data <- list.files(path = directory, full.names = TRUE)
  y <- data.frame()
  for (i in id) {
    y <- rbind(y, read.csv(data[i]))
  }
  if (pollutant == 'sulfate') {
    mean(y$sulfate, na.rm = TRUE)
  } else if (pollutant == 'nitrate') {
    mean(y$nitrate, na.rm = TRUE)
  }
}