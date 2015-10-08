## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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

