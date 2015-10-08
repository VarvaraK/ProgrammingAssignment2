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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
