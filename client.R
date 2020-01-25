
library(httr)
library(tictoc)

tic("Total processing time")
for (i in seq_len(5)){
  call <- POST(
    url = "http://127.0.0.1:8080/sum?b=2&a=3",
    accept_json()
  ) 
}
toc()
   