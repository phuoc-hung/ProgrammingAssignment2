## These functions uses to cache the inverse of a matrix.

## This function uses to creat a matrix object that could cache its inverse

makeCacheMatrix <- function(x = matrix()) {

## Set a matrix 
      invs= NULL
      set=function(y){
                    x<<-y
                    inv<<-NULL
      }
## Get the matrix
      get=function() x
## Set the inverse matrix
      setinvs=function(Inverse) invs<<- Inverse 
## Get the inverse matrix
      getinvs=function() invs
## Create the input for the cacheSolve
      list(set=set, get=get, setinvs=setinvs, getinvs=getinvs ) 
      

}


## This function computes the inverse of the special " matrix"returned by makeCacheMatrix 
## above. If the inverse has already been calculated then the cachesolve should retrieve 
## the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      invs=x$getinvs
## If the inverse matrix has already computed, return it from the cache
      if(!is.null(invs)){
                    message('getting cached data')
                    return(invs)
      }
## Otherwise, calculate the inverse
                    my_data<-x$get()
                    invs<-Inverse(my_data,...)
                    x$setinvs(invs)
                    invs
}




