## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    S <- NULL
    set <- function(y) {
        x <<- y
        S <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) S <<- solve
    getsolve <- function() S
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    S <- x$getsolve()
    if(!is.null(S)) {
        message("getting cached data")
        return(S)
    }
    data <- x$get()
    S <- solve(data, ...)
    x$setsolve(S)
    S
}
