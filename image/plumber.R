
library(plumber)

pr <- plumber$new()

pr$handle("GET", "/", function(req, res){
  message(">>>...Starting...<<<")
  Sys.sleep(3)
  message(">>>...Finishing...<<<")
  return("Success")
})

pr$run(host = "0.0.0.0", port = 8000, swagger = FALSE)
