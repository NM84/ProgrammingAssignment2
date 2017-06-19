## makeCacheMatrix creates a special matrix object, cacheSoleve calculates the inverse of the matrix

## if the inverse has already been calculated, it will instead find the cached data and return it

makeCacheMatrix <- function(x = matrix()) {
  inv_x <- NULL
  set <- funtion(y) {
    x <<- y
    inv_x <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv_x <<- inverse
  getinverse <- function() inv_x
  list(set = set, get = get,
      setinverse = setinverse,
      getinverse = getinverse)
}

## cacheSolve returns the inverse of a matrix (x) created by the makeCachedMatrix

cacheSolve <- function(x, ...) {
  inv_x <- x$inverse()
  if(!is.null(inv_x)) {
    message("getting cached inverse matrix")
    return(inv_x)
  }
  data <- X$get()
  inv_x <- solve(x$get())
  x$setinverse(inv_x)
  return(inv_x)
}
