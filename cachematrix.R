## Overall Description 

## function - develop a vector and store ime consuming calculations

##This function makes a matrix object that can store its inverse.

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(o) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

##This function makes the inverse of the matrix returned by the function above 
##Else the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("retrieving cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data)
  x$setinverse(a)
  a
  
}


