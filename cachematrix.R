## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function is defined to create a Matrix, capable of caching the inverse of the Matrix created.
## cacheSolve function is created to give us the inverse of the same matrix. If the inverse is already calculated, the inverse is retrieved from the cache.

## Write a short comment describing this function

## makeCacheMatrix function firstly is used to create a Matrix.
## Set function assigns y to the Matrix x
## Get function retrives the Matrix x
## getInverse function retieves the inverse p

makeCacheMatrix <- function(x = matrix()) {
  p <- NULL
  set <- function(y){
    x <<- y
    p <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) p <<- inverse
  getInverse <- function() p 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

## The objective of cacheSolve function is to return the inverse of a Matrix x.
## It will firstly check whether inverse of the Matrix x is present or not. 
## If it's present, it will show a message displaying "Getting cached data", and display the inverse by returning the value of 'p'.
## If it's absent, it will calculate the inverse using solve() function and display the same.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  p <- x$getInverse()
  if(!is.null(p)){
    message("getting cached data")
    return(p)
  }
  mat <- x$get()
  p <- solve(mat,...)
  x$setInverse(p)
  p
}
