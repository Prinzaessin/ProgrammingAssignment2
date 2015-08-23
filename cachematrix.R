## The function caches the calculation of an inverse of a matrix. 

## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x<<-y
                m<<- NULL
        get<-function() x
        setmatrix<- function(matrix, nrow=a, ncol=b) m<<-matrix
        getmatrix <- function()m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
        }
}


## This function computes the inverse of the cached matrix

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data<- x$get()
        m<- matrix(data, ...)
        x$setmatrix(m)
        return(m)
        

    
}

