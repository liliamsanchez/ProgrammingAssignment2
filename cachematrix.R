## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## funcion makeCacheMatrix:
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function


## funcion cacheSolve:
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
  if(!is.null(inv)) {
    message("obtener resultado en caché")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}

## Validando funciones:
#m <- matrix(rnorm(9),3,3)
#m
#           [,1]        [,2]        [,3]
#[1,] -1.1231086  0.77996512 -0.02854676
#[2,] -0.4028848 -0.08336907 -0.04287046
#[3,] -0.4666554  0.25331851  1.36860228
#m1 <- makeCacheMatrix(m)
#cacheSolve(m1)
#           [,1]       [,2]        [,3]
#[1,] -0.1825172 -1.8999571 -0.06332176
#[2,]  1.0101724 -2.7409800 -0.06478867
#[3,] -0.2492090 -0.1404967  0.72107342
