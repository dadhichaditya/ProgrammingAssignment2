## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the value of the inverse the matrix
## 4.  get the value of the inverse the matrix
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
    }
    get <- function() return(mtx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

## The following function calculates the inverse of the special
## "matrix" created with the above function. However, it first
## checks to see if the inverse has already been calculated. If
## so, it `get` the inverse from the matrix cache and skips the
## computation. Otherwise, it calculates the inverse of the data
## and sets the value of the inverso in the cache via the
## `setinverse` function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- mtx$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }
    data <- mtx$get()
    invserse <- solve(data, ...)
    mtx$setinv(inverse)
    return(inverse)
}
