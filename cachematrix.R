## These functions create a special matrix and computes the inverse of the matrix.
#The set of functions also allow for the retrieval of the inverse from the cache.


## The makeCacheMatrix function creates a spcecial matrix and computes the inverse of that martix 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <-- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## The cacheSolve function retrieves the inverse from the cache (if the matrix has not been changed)

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
        message("getting cached data")
        return(inv) 
    }
  }
