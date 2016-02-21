validateMail <- function(adress){
  
  # Create the command line command
  start.command  <- "curl"
  user.command   <- "-G --user 'api:pubkey-5ogiflzbnjrljiky49qxsiozqef5jxp7'"
  link.command   <- "-G https://api.mailgun.net/v2/address/validate"
  adress.command <- paste('--data-urlencode address',adress,sep='=')
  call.command   <- paste(start.command,user.command,link.command,adress.command)
  
  # Invoke the command line command
  result <- system(call.command, intern=TRUE)
  
  # Get the is_valid status and covert it to a boolean
  is.valid <- substr(result[4],15,18)
  is.valid <- ifelse(is.valid=="true",TRUE,FALSE)
  
  # Return the boolean
  return(is.valid)
  
}