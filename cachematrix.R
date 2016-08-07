## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y){
    x <<- y
  invrs <<- NULL
  
}

get <- function() x
setinverse <- function(inverse) invrs <<- inverse
getinverse <- function() invrs
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function


# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrs <- x$getinverse()
  if(!is.null(invrs)){
    message("getting cached data")
    return(invrs)
  }
  
  data <- x$get()
  invrs <- solve(data)
  x$setinverse(invrs)
  invrs
}
