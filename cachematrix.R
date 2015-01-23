## Put comments here that give an overall description of what your
## functions do

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
