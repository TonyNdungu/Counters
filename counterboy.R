
# He counts, and you can count on him :)

status <- function(bank) {
  tot_all <- length(bank$type)
  
  photo <- 100*(length(grep("photo", bank$type))/tot_all)
  link <- 100*(length(grep("link", bank$type))/tot_all)
  video <- 100*(length(grep("video", bank$type))/tot_all)
  status <- 100*(length(grep("status", bank$type))/tot_all)
  
  percentages <- data.frame(photo, link, video, status)
  return(percentages)
}

# Pass the status function
status <- sort(status(bank), decreasing = T)

#Sort most popular statuss
status[ ,1:4]
