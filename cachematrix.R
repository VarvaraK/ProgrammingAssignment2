## Summary: Functions for Caching the Inverse of a Matrix

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## cacheSolve function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. 

makeCacheMatrix = function(X = matrix()){
  I = NULL
  #set the value of the matrix
  set = function(Y){
    X <<- Y
    I <<- NULL
  }
  #get the value of the matrix
  get = function() X 
  #set the value of the inverse
  setinv = function(solve) I <<- solve
  #get the value of the inverse
  getinv = function() I
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## cacheSolve function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve = function(X, ...){
  I = X$getinv()  # check if the inverse has already been computed. 
  if(!is.null(I)){
    message("getting cached data") #If so, get the inverse from the cache and skip the computation.
    return(I)
  }
  # compute the inverse if it's not found in cache
  data = X$get()
  I = solve(data, ...)
  X$setinv(I)
  ## Return a matrix that is the inverse of 'I'
  I
}

