# FACTOR
factor <- factor(rep(c(1:3), times = 5))
factor
x <- sample(100, 15)
?tapply
tapply(x, factor, mean)
rbind(x, factor)
boo <- rbind(x, factor)[2, ] == 1
which(boo)
rbind(x, factor)[1, which(boo)]
sum(rbind(x, factor)[1, which(boo)]) / length(which(boo))