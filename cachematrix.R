## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inver <- NULL
#setting
set <- function(y){
  x <<- y
  inver <<- NULL}
#demand function
get <- function()x
setinverse <- function (inverse) inver <<- inverse
getinverse <- function ()inver
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inver <- x$getinverse()
       #testing if inverse is calculated
       if(!is.null(inver)){
         message("getting cached data")
         return(inver)
       }
       data <- x$get()
       #calculate inverse
       inver <- inverse(data, ...)
       x$setinverse(inver)
       inver
}
