# Problem 1

# Find 
# (a) between -0.00999999999999979 and 0.59 .
pnorm(0.59) - pnorm(-0.00999999999999979)

# (b) between -1.13 and 2.16 .
pnorm(2.16) - pnorm(-1.13)

# (c) that lies to the left of 1.42 .
pnorm(1.42) - pnorm(-Inf)

# (d) that lies to the left of -1.9.
pnorm(-1.9) - pnorm(-Inf)

# (e) that lies to the right of -1.61.
pnorm(Inf) - pnorm(-1.61)

# (f) that lies to the right of 0.59 .
pnorm(Inf) - pnorm(0.59)

# Problem 2

# Suppose the random variable x is best described
# by a normal distribution with µ=21 and s=3.5
# Find the z-score that corresponds to each of the following x values.
# what is z-score https://www.datatechnotes.com/2018/02/z-score-with-r.html
# z = (x - µ) / s

# (a)  x=38
z <- (38 - 21) / 3.5

# (b)  x=30
z <- (30 - 21) / 3.5

# (c)  x=10
z <- (10 - 21) / 3.5

# Problem 3
# Find the z-score such that:
# The area under the standard normal curve
(a)  to its left is 0.9348
z = 
equation editorEquation Editor
(b)  to its left is 0.8645
z = 
equation editorEquation Editor
(c)  to its right is 0.1635
z = 
equation editorEquation Editor
(d)  to its right is 0.2095
z = 
equation editorEquation Editor