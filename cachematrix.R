## the functions cache the value of the matrix and its inversed one 
## so that when we need it again, it can be looked up in the cache rather 
## than computed again.

## create a list containing four functions that sets and gets 
## the value of the matrix and its inversed one. 
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                          
        set <- function(y) {               
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## return the inverse of the suqare matrix, 
## and "x" here should be the list which makeCacheMatrix created.
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setsolve(m)
        m ## Return a matrix that is the inverse of 'x'
}
