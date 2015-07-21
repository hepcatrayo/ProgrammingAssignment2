## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y){
    if(!identical(x,y) || is.null(x)){
      x <<- y
      inv <<- NULL
    }
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set=set, get=get,setinv=setinv,getinv=getinv)
}

makeCacheMatrixTest <- function(x = matrix()) {
  set <- function (y) x <<- y
    
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
  }
  else{
    message("calculating new inverse")
    my_data <- x$get()
    inv <- solve(my_data)
    x$setinv(inv)
  }
  inv
}
