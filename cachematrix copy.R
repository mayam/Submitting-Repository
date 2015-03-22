## In order to avoid re-calculating the inverses of commonly used matrices, makeCacheMatrix stores the matrix, and its inverse (if calculated) in a series of functions. cacheSolve takes in this listed "matrix", checks to see if the inverse has been computed; if so, it returns it-- if not, it calculates it, stores it in the list, and returns the value. 

## This function takes a matrix as its argument-- assumed to have an inverse-- and returns a stored series of functions in a list. The four stored functions are functions to set and retrieve the main data, as well as functions to set and retrieve the inverse of the matrix; if the matrix hasn't yet been assigned through the setinverse function, it is returned as NULL. 

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function checks to see if the inverse of the matrix has been computed and saved already. If so, it returns the inverse. If not, it computes the inverse using the solve() function, and stores it in the "matrix" cached-list, then returning the value. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse
	if (!is.null(m)){
		message("getting cached inverse")
		return(m)
	}
	data <- s$get()
	i<- solve(data, ...)
	x$setinverse(i)
	i
}


