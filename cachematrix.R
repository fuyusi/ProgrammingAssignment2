## Put comments here that give an overall description of what your
## functions do
## This two function can first create a matrix, then caculate and 
## cache the inverse of the matrix for the first time, also, if 
## if the inverse is needed agian, it can be print directly 
 

## This function creates a speicial "matrix", which is really a
## list to 1.set the matrix 2.get the matrix 3.set the inverse
## 4.get the inverse

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


## This fucntion calculates the inversion of the special "matrix"
## created before. It first checked if the inverse has been 
## calculated. If so, the inverse is directly printed out, otherwise
## it is calculated

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
