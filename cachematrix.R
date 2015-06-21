## This function helps in creating matrix which then sets it into list
## The list contains the functions to set the matrix, get the matrix, set the inverse and get the inverse

makeCacheMatrix <- function(x = matrix()) {
		
		original_matrix <<- x
		inverse_matrix <<- NULL
		set_matrix = function(z)
		{	
			original_matrix <<- z
			inverse_matrix <<- NULL
		}
		get_matrix = function()
		{
			original_matrix
		}
		set_inverse = function(y = matrix())
		{
			inverse_matrix <<- y
		}	
		get_inverse = function()
		{
			inverse_matrix
		}		
		list( set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse)

}


## This code checks if the matrix inverse is present already. If not then it inverses
## the matrix and shows the required answer else it retrieves the already calculated inverse.

cacheSolve <- function(x, ...) {

 		if(!is.null(inverse_matrix))
		{
			message("Getting cached Inverse")
		}
		else
		{	
			message("Creating new Inverse")
			inverse_matrix <<- solve(original_matrix)
		}
		inverse_matrix

}
