
conv_date <- function(x){
  charv <- unlist(strsplit(x, '[[:space:]]'))[1]
  charv_vec <- unlist(strsplit(charv, '/'))
  almost_date <- paste(charv_vec[3], charv_vec[1], charv_vec[2], sep = "-")
  #print(almost_date)
  return(as.Date(almost_date))
}
file1$LastDeliveredDate_thing <- lapply(file1$LastDeliveredDate[!is.na(file1$LastDeliveredDate)], FUN = conv_date)
