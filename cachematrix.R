## Programmig assignment 2
## Try it :
## x <- matrix(c(1,3,5,4), nrow=2, ncol= 2)
## x
## solve(x)
## m <- makeCacheMatrix(x)
## cacheSolve(m)
## cacheSolve(m)

## Special matrix. Get/set the matrix. Get/set the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Get the inverse matrix. If not cached, solve and cache it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
