## Put comments here that give an overall description of what your
## functions do

## This function creates a special list which contains functions to, get and set
## matrix and set and get Inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    
    ## Initialize the inverse matrix
    i <- NULL

        set <- function( matrix ) {
        m <<- matrix
        i <<- NULL
    }
    
    get <- function() {
        ## Return the original matrix
        m
    }
    
    ## Set the inverse matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Get the inverse matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }
    
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## This function checks if the inverse of the matrix already exists,
## if exits returns the cached inverse matrix, if not compute, cache and return 
## the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    i <- x$getInverse()
    
    if( !is.null(i) ) {
        message("getting cached data")
        return(i)
    }
    
    data <- x$get()
    
    ## Calculate the inverse 
    i <- solve(data)
    
    x$setInverse(i)
    
    i
}
