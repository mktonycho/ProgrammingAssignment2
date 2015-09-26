## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  setmat<-function(old){
    x<<-old
    inv<<-NULL
  }
  getmat<-function()x
  setinv<-function(matri)inv<<-matri
  getinv<-function()inv
  list(setmat=setmat,getmat=getmat,
       setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversing<-x$getinv()
  if(!is.null(inversing)){
    message("getting cached data")
    return(inversing)
  }
  matr<-x$getmat()
  inversing<-solve(matr)
  x$setinv(inversing)
  inversing
  }

