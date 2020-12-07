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
(38 - 21) / 3.5

# (b)  x=30
(30 - 21) / 3.5

# (c)  x=10
(10 - 21) / 3.5

# Problem 3
# Find the z-score such that:
# The area under the standard normal curve
(a) to its left is 0.9348
z = qnorm(0.9348)

(b) to its left is 0.8645
z = qnorm(0.8645)

(c) to its right is 0.1635
z = qnorm(1 - 0.1635)

(d) to its right is 0.2095
z = qnorm(1 - 0.2095)

# Problem 4
A new car that is a gas - and electric - powered hybrid has recently hit the market. The distance travelled on 1 gallon of fuel is normally distributed with a mean of 45 miles and a standard deviation of 8 miles. Find the probability of the following events:

A. The car travels more than 48 miles per gallon.
Probability = 1 - pnorm(48, 45, 8)
0.2118554

B. The car travels less than 40 miles per gallon.
Probability = pnorm(40, 45, 8)
0.08075666

C. The car travels between 40 and 49 miles per gallon.
Probability = pnorm(49, 45, 8) - pnorm(40, 45, 8)
0.6294893

# Problem 5
(1 point) A soft drink bottler purchases glass bottles from a vendor. The bottles are required to have an internal pressure of at least 150 pounds per square inch(psi) . A prospective bottle vendor claims that its production process yields bottles with a mean internal pressure of 157 psi and a standard deviation of 3 psi. The bottler strikes an agreement with the vendor that permits the bottler to sample from the production process to verify the claim. the bottler randomly selects 50 bottles from the last 10000 produced, measures the internal pressure of each, and finds the mean pressure for
  the sample to be 0.8 psi below the process mean cited by the vendor.

(a) Assuming that the vendor is correct in his claim, what is the probability of obtaining a sample mean this far or farther below the process mean ?
pnorm(157 - 0.8, 157, 3 / sqrt(50))
(b) If the standard deviation were 3 psi as claimed, but the mean was 150 psi, what is the probability of obtaining a sample mean of 156.2 psi or below ?
pnorm(156.2, 150, 3 / sqrt(50))
(c) If the process mean were 157 psi as claimed, but the standard deviation was 3.9 psi, what is the probability of obtaining a sample mean of 156.2 psi or below ?
pnorm(156.2, 157, 3.9 / sqrt(50))

# Problem 6
The distance some top - selling tires can run until wear - out is a normally distributed random variable with a mean of 80000 miles and a standard deviation of 9000 miles.

A. What is the probability that a tire will travel more than 67400 miles before wear - out ?
Probability = 1 - pnorm(67400, 80000, 9000)

B. What is the probability that a tire will travel less than 69200 miles before wear - out ?
Probability = pnorm(69200, 80000, 9000)

D. How many miles before wear - out a tire has to travel so that is at the top 15 % of all tires ?
Miles = qnorm(1 - 0.15) * 9000 + 80000

# Problem 7
Assume that women weights are normally distributed with a mean given by μ = 143 lb and a standard deviation given by σ = 29 lb.
If 1 woman is randomly selected, find the probabity that her weight is above 175
1 - pnorm(175, 143, 29)
If 85 women are randomly selected, find the probability that they have a mean weight above 175
1 - pnorm(175, 143, 29 / sqrt(85))

# Problem 8
An airline company is considering a new policy of booking as many as 195 persons on an airplane that can seat only 180.(Past studies have revealed that only 86 % of the booked passengers actually arrive for the flight.) Estimate the probability that if the company books 195 persons, not enough seats will be available.
1 - pnorm(180, 0.86 * 195, sqrt(195) * sqrt(0.86 - 0.86 ^ 2))
Hint:Define Xi to be 0, if the ith passenger does not arrive and 1, otherwise. What is the mean and standard deviation of Xi ?

# Problem 9
# A civil engineering model for
#   W, the weight(in units of 1000 pounds) that a span of a bridge can withstand without sustaining structural damage is normally distributed. Suppose that for
#     a certain span W ∼N(500,502). Suppose further that the weight of cars traveling on the bridge is a random variable with mean 3.5 and standard deviation 0.35 . Approximately how many cars would have to be on the bridge span simultaneously to have a probability of structural damage that exceeded 0.1 ?
round((qnorm(0.1) * 50 + 500 ）/3.5,2)
Approximately cars(round to an integer number) 

factorial

mychoose <- function(r, k)
     ifelse(k <= 0, (k == 0),
            sapply(k, function(k) prod(r:(r-k+1))) / factorial(k))
 k <- -1:6
 cbind(k = k, choose(1/2, k), mychoose(1/2, k))

A <- function(a, b) {return(factorial(a)/factorial(a-b))}
C <- function(a, b) {return(factorial(a)/factorial(a-b)/factorial(b))}
A(4,2)
C(4,2)

400/sqrt(3)

Problem 9
A civil engineering model for W, the weight (in units of 1000 pounds) that a span of a bridge can withstand without sustaining structural damage is normally distributed. Suppose that for a certain span W∼N(500,502). Suppose further that the weight of cars traveling on the bridge is a random variable with mean 3.5 and standard deviation 0.35. Approximately how many cars would have to be on the bridge span simultaneously to have a probability of structural damage that exceeded 0.1?
round((qnorm(0.1)*50+500)/3.5,20)
Approximately cars (round to an integer number).
