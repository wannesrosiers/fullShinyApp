makeRandomString <- function(n=1, lenght=12){
  # Initialize the string
  randomString <- c(1:n)
  
  # Create the string
  for (i in 1:n)
  {
    randomString[i] <- paste(sample(c(0:9, letters, LETTERS),
                                    lenght, replace=TRUE),
                             collapse="")
  }
  
  # Return the string
  return(randomString)
}