## Put comments here that give an overall description of what your
## functions do
## This program will allow users to input a square matrix and 
## calculate the inverse of it. Then it will be cached.
## The function cacheSove will first decide if it the inverse of a 
## matrix already exists in the cache. If it does, the function 
## will output the exiting value; if not, the function will 
## calculate and output it

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
	}
	get <- function() x
	setinv <- function(solve) m <<- solve
	getinv <- function () m
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## The cacheSolve function will first check if the inverse of the input matrix exists,
## If not, it will call makeCheMatrix to calculate the inverse.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
	m <- x$getinv()
	if(!is.null(m)){
	        message("getting cached inverse")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinv(m)
	m
}
