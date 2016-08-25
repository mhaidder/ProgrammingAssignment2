## Tested the function  
## created 2 by 2 matrix mhaidder_matrix
> mhaidder_matrix <- makeCacheMatrix(matrix(1:4,2,2))
# getting inverse which retruns NULL
> mhaidder_matrix$getInverse()
NULL
# used cacheSolve function to calculate inverse
> cacheSolve(mhaidder_matrix)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
# called same function again, because inverse is already calculated that is why
# displaying message that data is coming from cache
> cacheSolve(mhaidder_matrix)
getting the inverse from cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
# called getInverse which is returning the same values
> mhaidder_matrix$getInverse()
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
# change the values in matrix to test if it calculates correctly just to double check
> mhaidder_matrix(matrix(c(2,4,6,8),2,2))
Error: could not find function "mhaidder_matrix"
> mhaidder_matrix$set(matrix(c(2,4,6,8),2,2))
> mhaidder_matrix$get()
     [,1] [,2]
[1,]    2    6
[2,]    4    8
> mhaidder_matrix$getInverse()
NULL
> cacheSolve(mhaidder_matrix)
     [,1]  [,2]
[1,] -1.0  0.75
[2,]  0.5 -0.25
> cacheSolve(mhaidder_matrix)
getting the inverse from cached data
     [,1]  [,2]
[1,] -1.0  0.75
[2,]  0.5 -0.25
> 
