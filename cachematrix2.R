## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invi <- NULL
set <- function(y){
  x <<- y
  invi <<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) invi <<- solveMatrix
getInverse <- function() invi
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invi <- x$getInverse()
  if(!is.null(invi)){
    message("getting cached data")
    return(invi)
  }
  data <- x$get()
  invi <- solve(data)
  x$setInverse(invi)
  invi     
}
