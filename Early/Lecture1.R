# install.packages("ggplot2")
# library(ggplot2)
# update.packages()

v <- c(1, 4, 4, 3, 2, 2, 3)
v[c(2, 3, 4)]
# 切片输出
v[2:4]
v[c(2, 4, 3)]
v[-2]
# 切片断片输出
v[-2:-4]
v[v < 3]
which(v == 3)

set.seed(250)
# 生成随机数
a <- runif(3, min = 0, max = 100)
# 向下向上取整
floor(a)
ceiling(a)
# 保留n位小数
round(a, 4)

# 文件读取，csv和table不同
data1 <- read.csv(file = "http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")
data2 <- read.table(file = "http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")
data3 <- read.csv("http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")

attach(data3)

set.seed(123)
x <- rnorm(500, mean = 1000, sd = 100)
set.seed(234)
y <- rnorm(100, mean = 100, sd = 10)
# x hist,9 breaks 直方图
hist(x, breaks = 9, col = "blue")
# x density 密度图
plot(density(x))
plot(x, type = "l")
# 箱形图
boxplot(x, y)
boxplot(time ~ sex)

qqnorm(x)
qqline(x)
qqplot(x, y)