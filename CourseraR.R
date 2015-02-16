##  Try out code from lectures
##  Coursera R course

ls()
rm(list=ls())

makePower <- function(n) {
        ## makePower returns the function pow() with n specified
        pow <- function(x) {  
                x^n    
        }
        pow
}

## Create cube function -- cube is pow with n set to 3
## n is set to three by defining cube as makePower(3)
## When cube is called, need to supply a value for x
cube <- makePower(3)
cube(2)



compute_mean <- list(
  base = 3,
  sum = function(x) sum(x) / length(x),
  manual = function(x) {
    total <- 0
    n <- length(x)
    for (i in seq_along(x)) {
      total <- total + x[i] / n
    }
    total
  }
)
x <- runif(1e05)
lapply(compute_mean, function(f) f(x))




