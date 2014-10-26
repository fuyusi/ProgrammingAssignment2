## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverses <- NULL
  set <- function(y){
    x<<-y
    iverses<<-NULL
  }
  get <- function()x
  setinverse <-function(inputin)inverses<<-inputin
  getinverse <-function()inverses
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("from cache")
    return(inv)
  }
    madata<-x$get()
    revx<-solve(madata)
    x$setinverse(revx)
    return(revx)
}
