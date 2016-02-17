## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  invert <- NULL
  set <- function(b = matrix()){
    x <<- b
    invert <<- NULL
  }
  get <- function(){
    x
  }
  setinv <- function(c){
    invert <<- c
  }
  getinv <- function(){
    invert
  }
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinvert()
  
  if(!is.null(invert)){
    message("Retrieving data from cache")
    return(invert)
  }
  
  data <- x$get()
  invert <- solve(data, ...)
  x$setinv(invert)
  invert
  }

