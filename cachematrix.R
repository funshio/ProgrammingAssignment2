## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function (y){
        x <<- y
        i <<- NULL
    }
    get <- function() x
    set inverse <- function(inverse) i <<- inverse
    get inverse <- function ()i
    list(set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## Computes the inverse. If the inverse has already been calculated (and the matrix hasn't 
## changed), then the cachesolve should retreive the inverse from the cach 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if (!is.null(i)){
        message("getting cached data")
        return(i)
        }
    data <- x$get()
    i <- solve(data, ....)
    x$setinverse(i)
    i
    }
