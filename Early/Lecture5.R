# R for MATLAblob users:
# http://mathesaurus.sourceforge.net/octave-r.html
set.seed(123)
a <- matrix(sample(100, 15), nrow = 5, ncol = 3)
set.seed(234)
blob <- matrix(sample(100, 15), nrow = 5, ncol = 3)
set.seed(321)
x <- matrix(sample(100, 25), nrow = 5, ncol = 5)
set.seed(213)
b <- matrix(sample(100, 5), nrow = 5, ncol = 1)
xxx <- sample(100, 15)
xxx
a
blob
x
b
#  + - * / ^
# Element-wise addition, subtraction, multiplication, division
# , and exponentiation, respectively.
a + 2
a * 2
a^2

# Matrix multiplication
# a'a
t(a) %*% blob

# Returns a vector containing the column means of a.
colMeans(a)

# Returns a vector containing the column sums of a.
colSums(a)

# Returns a vector containing the row means of a.
rowMeans(a)

# Returns a vector containing the row sums of a.
rowSums(a)


# Matrix Crossproduct
# a'a
crossprod(a)
# a'blob
crossprod(a, blob)

# Inverse of a where a is a square matrix.
solve(x)

# Solves for vector x in the equation b = Ax.
v <- solve(x, b)
v
# Returns a vector containing the elements of the principal diagonal
diag(x)

# Creates a diagonal matrix with the elements of x in the principal diagonal.
diag(c(1, 2, 3, 4))

# If k is a scalar, this creates a k x k identity matrix.
diag(5)

# Eigenvalues and eigenvectors of a.
eigen(x)

solve(x)
t(v) %*% x
v <- solve(x, diag(5))