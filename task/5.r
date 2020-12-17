#################################################problem1#################################################
cat("#################################################problem1#################################################\n")

#注意，类似“2.763517e-07”形式的数字，填到空里应写成“2.763517*10^(-7)”的形式
cat("注意，类似“2.763517e-07”形式的数字，填到空里应写成“2.763517*10^(-7)”的形式\n")

miu = 2.25 #根据题目信息输入平均值
n = 71 #根据题目信息输入样本数
xbar = 2.37 #根据题目信息输入xbar
s = 0.7 #根据题目信息输入s
alpha = 0.01 #根据题目信息输入alpha

if (n>30){
test_statistic = (xbar-miu)/(s/sqrt(n))
cat(test_statistic," \n")
z = qnorm(1-alpha)
cat("(",z,",infty )\n")
p_value = 1-pnorm(test_statistic)
cat(p_value,"\n")
} else{
test_statistic = (xbar-miu)/(s/sqrt(n))
cat(test_statistic," \n")
p_value = 1-pt(test_statistic,n-1)
cat(p_value,"\n")
}
if (p_value>alpha){
cat("There is not sufficient evidence to support the claim that the mean grade point average is greater than 2.25.\n")}else{
cat("There is sufficient evidence to support the claim that the mean grade point average is greater than 2.25.\n")
}

#################################################problem2#################################################
cat("#################################################problem2#################################################\n")

#注意，类似“2.763517e-07”形式的数字，填到空里应写成 “2.763517*10^(-7)”的形式
cat("注意，类似“2.763517e-07”形式的数字，填到空里应写成“2.763517*10^(-7)”的形式\n")

miu = 61.3 #根据题目信息输入平均值
n = 11 #根据题目信息输入样本数
xbar = 62.99 #根据题目信息输入xbar
s = 0.5 #根据题目信息输入s
alpha = 0.01 #根据题目信息输入alpha

if (n>30){
test_statistic = (xbar-miu)/(s/sqrt(n))
cat(test_statistic," \n")
z = qnorm(1-alpha)
cat("(",z,",infty )\n")
p_value = 1-pnorm(test_statistic)
cat(p_value,"\n")
} else{
test_statistic = (xbar-miu)/(s/sqrt(n))
cat(test_statistic," \n")
p_value = 1-pt(test_statistic,n-1)
cat(p_value,"\n")
}
if (p_value>alpha){
cat("There is not sufficient evidence to support the claim that the mean grade point average is greater than 61.3.\n")}else{
cat("There is sufficient evidence to support the claim that the mean grade point average is greater than 61.3.\n")
}

#################################################problem3#################################################
cat("#################################################problem3#################################################\n")
n = 175 #根据题目信息输入样本数
nhat = 82 #根据题目信息输入样本中type A的数目
pa = 0.4 #根据题目信息输入type A出现的概率
alpha = 0.05 #根据题目信息输入alpha

phat = nhat/n
test_statistic = (phat-pa)/(sqrt(pa*(1-pa)/n))
cat(test_statistic,"\n")
if (n>30){
p_value = (1-pnorm(test_statistic))+pnorm(-test_statistic)
cat(p_value,"\n")
}else{
p_value = (1-pt(test_statistic,n-1))+pt(-test_statistic,n-1)
cat(p_value,"\n")
}
if(p_value>alpha){
cat("There is not sufficient evidence to support the claim that the percentage of type A donations differs from 40%.\n")
}else{
cat("There is sufficient evidence that the percentage of type A donations differs from 40%.\n")
}

#################################################problem4#################################################
cat("#################################################problem4#################################################\n")
n = 90 #根据题目信息输入样本数
nhat = 51 #根据题目信息输入样本中type A的数目
alpha = 0.01 #根据题目信息输入alpha

pa = 0.5
phat = nhat/n
test_statistic = (phat-pa)/(sqrt(pa*(1-pa)/n))
cat(test_statistic,"\n")
if (n>30){
c_value = 1-pnorm(test_statistic)
c_value = qnorm(1-alpha)
cat(c_value,"\n")
}else{
c_value = 1-pt(test_statistic,n-1)
c_value = qnorm(1-alpha)
cat(c_value,"\n")
}
if(c_value>alpha){
cat("There is not sufficient evidence to conclude that more than half of the surveyed preferred Diet Pepsi over Diet Coke.\n")
}else{
cat("there is sufficient evidence to conclude that more than half of the surveyed preferred Diet Pepsi over Diet Coke.\n")
}

#################################################problem5#################################################
cat("#################################################problem5#################################################\n")
n = 335 #根据题目信息输入n的样本数
m = 335 #根据题目信息输入m的样本数
xbar = 5 #根据题目信息输入xbar
ybar = 3 #根据题目信息输入ybar
s1 = 150 #根据题目信息输入s1
s2 = 105 #根据题目信息输入s2

##########(a)##########
confidence_interval = 0.99 #根据题目信息输入confidence interval

alpha = 1 - confidence_interval
if(n>30 & m>30){
c_value = qnorm(1-alpha/2)
c = c_value*sqrt((s1^2/n)+(s2^2/m))
cat(xbar-ybar-c,xbar-ybar+c,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(1-alpha/2,df)
c = c_value*sqrt((s1^2/n)+(s2^2/m))
cat(xbar-ybar-c,xbar-ybar+c,"\n")
}

##########(b)##########
H0 = 0 #根据题目信息输入H0
alpha = 0.01 #根据题目信息输入alpha

test_statistic = (xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30 & m>30){
c_value = qnorm(1-alpha/2)
cat(c_value,"\n")
cat(-c_value,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(1-alpha/2,df)
cat(c_value,"\n")
cat(-c_value,"\n")
}
if(-c_value<test_statistic & test_statistic<c_value){
cat("There is not sufficient evidence to reject the null hypothesis that (μ1−μ2)=0.\n")
}else{
cat("We can reject the null hypothesis that (μ1−μ2)=0 and accept that (μ1−μ2)≠0.\n")
}

##########(c)##########
H0 = 26 #根据题目信息输入H0
alpha = 0.01 #根据题目信息输入alpha

test_statistic = (xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30 & m>30){
z_value = qnorm(1-alpha/2)
cat(z_value,"\n")
cat(-z_value,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
t_value = qt(1-alpha/2,df)
cat(t_value,"\n")
cat(-t_value,"\n")
}
if(-z_value<test_statistic & test_statistic<z_value){
cat("There is not sufficient evidence to reject the null hypothesis that (μ1−μ2)=26.\n")
}else{
cat("We can reject the null hypothesis that (μ1−μ2)=0 and accept that (μ1−μ2)≠26.\n")
}

#################################################problem6#################################################
cat("#################################################problem6#################################################\n")
n = 26 #根据题目信息输入样本数n
xbar = 5.8 #根据题目信息输入xbar
s1 = 0.9 #根据题目信息输入s1
m = 30 #根据题目信息输入样本数m
ybar = 6.4 #根据题目信息输入ybar
s2 = 1.4 #根据题目信息输入s2

##########(a)##########
significance_level = 0.05 #根据题目信息输入significance_level

alpha = significance_level
H0 = 0
test_statistic = (xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30 & m>30){
c_value = qnorm(1-alpha/2)
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(1-alpha/2,df)
}

##########(b)##########
cat(c_value,"\n")

##########(c)##########
cat(-c_value,"\n")

##########(d)##########
if(test_statistic>-c_value & test_statistic<c_value){
cat("No\n")
}else{
cat("Yes\n")
}

##########(e)##########
significance_level = 0.05 #根据题目信息输入significance_level

if(n>30 & m>30){
c_value = qnorm(alpha)
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(alpha,df)
}
cat(c_value,"\n")
if(test_statistic>c_value){
cat("No\n")
}else{
cat("Yes\n")
}

#################################################problem7#################################################
cat("#################################################problem7#################################################\n")
data1 = c(675,675,655,542,596,675,598) #根据题目信息输入data1
data2 = c(570,534,536,556,463,547,500,493,508,492,486) #根据题目信息输入data2
significance_level = 0.01 #根据题目信息输入significance_level

n = length(data1)
m = length(data2)
xbar = mean(data1)
ybar = mean(data2)
s1 = sd(data1)
s2 = sd(data2)
alpha = significance_level
H0 = 0
test_statistic = (xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30 & m>30){
c_value = qnorm(1-alpha)
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(1-alpha,df)
}
cat(c_value,"\n")
if(test_statistic>c_value){
cat("Yes\n")
}else{
cat("No\n")
}


# To compute the degrees of freedom in a t-test
#Replace the following values with your values
n=7
s1=2.299068
m=8
s2=4.026697
#Then run the following commands
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
df

#If you know x and y, you can run the t.test command
x=c(68, 68, 67, 72, 68, 72, 72 )
y=c(80, 78, 73, 71, 79, 71, 71, 71 )

#alternative (hypothesis) is either "two.sided" or "less" or "greater"
#mu is the null value D0
#var.equal=FALSE when the two population variances are NOT equal
#var.equal=TRUE when the two population variances are EQUAL
#conf.level=0.95 is the confidence level=1-alpha

t.test(x,y,alternative="two.sided",mu=0, var.equal=FALSE,conf.level = 0.95)
