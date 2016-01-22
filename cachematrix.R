## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat_inv <- NULL
  if (ncol(x) == nrow(x)){
    mat_inv <<- solve(x)
  }
  else {
    message("Not a square matrix!")
    return(x)
  }
 
}


## Write a short comment describing this function
## The cacheSolve function will first check if the inverse of the input matrix exists,
## If not, it will call makeCheMatrix to calculate the inverse.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (!is.null(mat_inv)){
    message("getting cached data...")
    return(mat_inv)
  }
  else{
    makeCacheMatrix
  }
  
        
        
}
