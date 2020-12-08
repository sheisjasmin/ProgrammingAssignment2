## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse
## Initialize the inverse property
## Method to set the matrix and get the matrix
## Method to set the inverse of the matrix and to get the inverse of the matrix
## Return a list of the methods

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## Return a matrix that is the inverse of 'x'
## Return the inverse if its already set
## Get the matrix from object
## Calculate the inverse using matrix multiplication
## Set the inverse to the object
## Return the matrix

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i  
        ## Return a matrix that is the inverse of 'x'
}
