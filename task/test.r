
Problem2
x=c(0,1,2)
px=c(0.17,0.14,0.69)#计算所得
y=c(0,1,2)
py=c(0.15,0.09,0.76)#计算所得

sum(x*px)
varx=sum(x^2*px)-sum(x*px)^2
varx
sqrt(varx)

sum(y*py)
vary=sum(y^2*py)-sum(y*py)^2
vary
sqrt(vary)

EXY=2.76#这里手算
EXY-sum(x*px)*sum(y*py)
(EXY-sum(x*px)*sum(y*py))/(sqrt(varx)*sqrt(vary))

(45*2.76+63*1.52-20*1.61-28-(-9*1.52+4)*(-5*1.61-7))/(sqrt(varx)*sqrt(vary))

EXY-sum(x*px)*sum(y*py)
2.78-1.52*1.61

Problem3
mean=157
standard=3
sample=60
question1=156.9
pnorm(question1,mean,standard/sqrt(sample))
question2=156.9
mean2=156
pnorm(question1,mean2,standard/sqrt(sample))
question3=156.9
mean3=157
standard3=2.7
pnorm(156.9,157,2.7/sqrt(60))

Problem4
x=c(170.7,163.9,172.1,173.4,175,173.9,187.7,174.5,171.9,162.5,182.6,180.6,166.7,162.3,173.9,158.2,181.2,169.6,181.3,168.5,170.8,165.3,183,163.9,182.7,167.9,164.3,171.8,176.2,162.8,185.1,177.3,180.1,163.4,177,170.6,170.4,167.6,174.3,171.9,170.5,179.6,166.2,184.9,160.7,173.5,167,178.1,184.8,168.2,167.7,186.3,186,168.4,183.2,182.4,176.8,179.3,164.4,180.1,169.9,183.2,172.5,169.8,168.2,179.7,182.6,182.4,173,162.9,178.5,175.1,166.4,161.3,167.3,175.1,163.5,170.6,178.8,177.5,169.1,163.1,169.7,169.3,157.4,173.8,181.4,169.5,169.4,158.5,171,189.3,176.6,174.7,165.1,172.6,174.8,174.5,177.1,171.4,179,165.2,169.6,175.4,171.6,177,173.9,178.3,168.5,182.2,169.3,162.6,182.2,180.1,169.4,167.7,186.5,185.6,175,166.2,175.5,169,174.5,167.8,163,167.5,169,161.6,168.2,194.8,165.1,171,163.4,169.1,169.8,159.5,183.2,183.2,163.3,165,180.1,182.1,183.6,174.8,175.6,175.1,171.2,166.5,177.6,178.8,160.6,173,172.8,173.5,182.5,156.5,166.5,175.4,157.8,184.5,171.7,175,170.8,174.6,170.2,176.9,165.2,178.5,174.8,175.1,168.8,167,181.4,166,172.5,170.2,172.9,166.9,166.1,172.3)
y=c(168.6,164.7,176.4,170.7,174.3,176.6,184.1,177.1,171.6,167.6,179.8,182.9,168.1,163.6,167,160.4,178.8,171.2,185.2,181.4,173.2,177.4,182.6,168.5,176.5,167.7,168.6,166.8,183,179.7,188.9,178.2,183.2,156.4,176.1,182.4,170.5,170,178.6,169.5,177.5,174.4,178.2,182.9,171.8,170,168.4,173.2,182.6,183.8,170.4,181.7,185.9,167.4,175.7,188.4,177.1,184.1,167.8,171.4,171.8,177.7,172.1,169,173.2,186.2,181.6,190.1,175.8,161.5,193,180.5,170,163.6,182.6,170.8,163.1,162.4,178.1,186.1,164.1,172.4,171.7,182.9,171.8,170.6,193.7,178.7,169,171.6,173,192.5,180.8,179.3,171.5,184.4,191,184.4,179.4,178,180,176.3,174.3,184.1,168.9,167,178.8,172.3,169.2,171.1,165.5,174.2,175.3,173.1,168.1,171.9,176.4,185,180.8,174.1,165.2,171.4,170.2,176.4,171,168.7,169.6,167.2,163.7,185.8,167.6,173.3,170.1,177.4,169.6,178.4,177.6,188.6,172,165.3,185.4,190.5,188.8,177.2,182.7,176.4,172,171.2,162.4,171.7,159,169.6,172.4,180.5,177.4,159.5,166.8,179.1,165.4,179.5,168.3,177.6,177.8,168,169.1,180.1,153.5,178.5,183.4,178.4,179.9,170.9,184.9,164.4,172.1,185.2,172.2,172.7,176.3,177.5)
sum(x)
sum(y)
sum(x^2)
sum(y^2)
sum(x*y)
n=length(x)
Sxx=sum(x^2)-1/n*(sum(x)^2)
Sxx
Syy=sum(y^2)-1/n*(sum(y)^2)
Syy
Sxy=sum(x*y)-1/n*sum(x)*sum(y)
Sxy

beta1=Sxy/Sxx
beta0=mean(y)-beta1*mean(x)
beta0
beta1
SSE=Syy-beta1*Sxy
SSE
s=sqrt(SSE/(n-2))
s

Problem5
p0=0.05
p05=0.4
p1=0.55
GBofmemory=312
supportall=399

v=sqrt(0.65-(0.5*0.4+0.55)^2)
v
pnorm(supportall,GBofmemory*(0.5*0.5*p05+p1),sqrt(GBofmemory)*v)
pnorm(399,312*(0.65),sqrt(312)*v)

Problem6

miu=15.3#根据题目信息输入平均值
n=64#根据题目信息输入样本数
xbar=16.4#根据题目信息输入xbar
s=0.5#根据题目信息输入s
alpha=0.01#根据题目信息输入alpha

if(n>30){
test_statistic=(xbar-miu)/(s/sqrt(n))
cat(test_statistic,"\n")
z=qnorm(1-alpha)
cat("(",z,",infty)\n")
p_value=1-pnorm(test_statistic)
cat(p_value,"\n")
}else{
test_statistic=(xbar-miu)/(s/sqrt(n))
cat(test_statistic,"\n")
p_value=1-pt(test_statistic,n-1)
cat(p_value,"\n")
}
if(p_value>alpha){
cat("Thereisnotsufficientevidencetosupporttheclaimthatthemeangradepointaverageisgreaterthan2.25.\n")}else{
cat("Thereissufficientevidencetosupporttheclaimthatthemeangradepointaverageisgreaterthan2.25.\n")
}

Problem7
s=15
n=94
Xbar=105.2
confidence_interval=0.99
t=qt(0.5+confidence_interval/2,n-1)
x1=Xbar-t*s/sqrt(n)
x2=Xbar+t*s/sqrt(n)
print(x1)
print(x2)

want=0.99
s=15
t=qnorm(0.5+want/2)
n=(t*s*1)^2
print(n)


#Problem9
confidence_interval=0.99
X=0.5
t=qnorm(0.5+confidence_interval/2)
X*(1-X)/(0.025/t)^2
#向上取整

#第二问
X=0.44
n=1770
marginoferror=0.0192
t=marginoferror/(sqrt(X*(1-X)/n))
(2*pnorm(t)-1)*100



#Problem10
Thetdistributionwith9degreesoffreedom
第二问答案不确定，输出是第三问的
data=c(0.871,0.908,0.936,0.874,0.92,0.882,0.913,0.933,0.923,0.898)#题目数据
n=length(data)
mean=mean(data)
s=sd(data)

confidenceinterval=0.9
alpha=1-confidenceinterval#根据题目所给的区间alpha值输入，比如90%区间对应的alpha是0.1
mean - qnorm(1-alpha/2)*s/sqrt(n)
mean + qnorm(1-alpha/2)*s/sqrt(n)
df=n-1
chi_square_value_1=qchisq(1-alpha/2,df)

chi_square_value_2=qchisq(alpha/2,df)

sigma_square_interval_1=((n-1)*s^2)/chi_square_value_1
sigma_square_interval_2=((n-1)*s^2)/chi_square_value_2
sigma_interval_1=sqrt(((n-1)*s^2)/chi_square_value_1)
sigma_interval_2=sqrt(((n-1)*s^2)/chi_square_value_2)
c(sigma_square_interval_1,sigma_square_interval_2)
c(sigma_interval_1,sigma_interval_2)

#####problem11
cat("problem11\n")
n=173#根据题目信息输入样本数
nhat=57#根据题目信息输入样本中typeA的数目
pa=0.4#根据题目信息输入typeA出现的概率
alpha=0.05#根据题目信息输入alpha

phat=nhat/n
test_statistic=(phat-pa)/(sqrt(pa*(1-pa)/n))
cat(test_statistic,"\n")
qnorm()

p_value=(1-pnorm(test_statistic))+pnorm(-test_statistic)
cat(p_value,"\n")
(1-pt(test_statistic))+pt(-test_statistic)
#####problem12#####

data=c(66,66.1,67,68.8,63.9,66.9,66,65.8,64.8,64.5)

miu=61.7#根据题目信息输入平均值
n=length(data)
xbar=mean(data)
s=sd(data)
alpha=0.05
df=n-1
xbar
s

test_statistic=(xbar-miu)/(s/sqrt(n))
cat(test_statistic,"\n")
p_value=1-pt(test_statistic,n-1)
cat(p_value,"\n")

if(n>30 & m>30){
c_value = qnorm(alpha)
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value = qt(alpha,df)
}


if(p_value>alpha){
cat("Thereisnotsufficientevidencetosupporttheclaimthatthemeangradepointaverageisgreaterthan61.3.\n")}else{
cat("Thereissufficientevidencetosupporttheclaimthatthemeangradepointaverageisgreaterthan61.3.\n")
}


#####problem13
n=69#根据题目信息输入n的样本数
m=69#根据题目信息输入m的样本数，m=n
xbar=1#根据题目信息输入xbar
ybar=0#根据题目信息输入ybar
s1=145#根据题目信息输入s1
s2=180#根据题目信息输入s2

##########(a)##########
confidence_interval=0.98#根据题目信息输入confidenceinterval

alpha=1-confidence_interval
if(n>30&m>30){
c_value=qnorm(1-alpha/2)
c=c_value*sqrt((s1^2/n)+(s2^2/m))
cat(xbar-ybar-c,xbar-ybar+c,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value=qt(1-alpha/2,df)
c=c_value*sqrt((s1^2/n)+(s2^2/m))
cat(xbar-ybar-c,xbar-ybar+c,"\n")
}

##########(b)##########
H0=0#根据题目信息输入H0
alpha=0.02#根据题目信息输入alpha

test_statistic=(xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30&m>30){
c_value=qnorm(1-alpha/2)
cat(c_value,"\n")
cat(-c_value,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
c_value=qt(1-alpha/2,df)
cat(c_value,"\n")
cat(-c_value,"\n")
}
if(-c_value<test_statistic&test_statistic<c_value){
cat("Thereisnotsufficientevidencetorejectthenullhypothesisthat(μ1−μ2)=0.\n")
}else{
cat("Wecanrejectthenullhypothesisthat(μ1−μ2)=0andacceptthat(μ1−μ2)≠0.\n")
}

##########(c)##########
H0=23#根据题目信息输入H0
alpha=0.02#根据题目信息输入alpha

test_statistic=(xbar-ybar-H0)/sqrt((s1^2/n)+(s2^2/m))
cat(test_statistic,"\n")
if(n>30&m>30){
z_value=qnorm(1-alpha/2)
cat(z_value,"\n")
cat(-z_value,"\n")
}else{
df=(s1^2/n+s2^2/m)^2/((s1^2/n)^2/(n-1)+(s2^2/m)^2/(m-1))
df=floor(df)
t_value=qt(1-alpha/2,df)
cat(t_value,"\n")
cat(-t_value,"\n")
}
if(-z_value<test_statistic&test_statistic<z_value){
cat("Thereisnotsufficientevidencetorejectthenullhypothesisthat(μ1−μ2)=26.\n")
}else{
cat("Wecanrejectthenullhypothesisthat(μ1−μ2)=0andacceptthat(μ1−μ2)≠26.\n")
}


sqrt(0.5*0.5*0.4+0.5-(0.5*0.4+0.5)^2)
1-pnorm(274,374*(0.5*0.4+0.5),sqrt(374)*0.3316625)


#####problem10#####
cat("problem10\n")
data_problem2 = c(0.898,0.891,0.923,0.907,0.877,0.913,0.874,0.882,0.936,0.952 ) #题目数据
n_problem2 = length(data_problem2)
mean_problem2 = mean(data_problem2)
s_problem2 = sd(data_problem2)

alpha_problem2 = 0.1 #根据题目所给的区间alpha值输入，比如90%区间对应的alpha是0.1
df_problem2 = n_problem2 - 1
chi_square_value_1_problem2 = qchisq(1-alpha_problem2/2,df_problem2)
chi_square_value_2_problem2 = qchisq(alpha_problem2/2,df_problem2)
sigma_square_interval_1_problem2 = ((n_problem2-1)*s_problem2^2)/chi_square_value_1_problem2
sigma_square_interval_2_problem2 = ((n_problem2-1)*s_problem2^2)/chi_square_value_2_problem2
sigma_interval_1_problem2 = sqrt(((n_problem2-1)*s_problem2^2)/chi_square_value_1_problem2)
sigma_interval_2_problem2 = sqrt(((n_problem2-1)*s_problem2^2)/chi_square_value_2_problem2)
c(sigma_square_interval_1_problem2,sigma_square_interval_2_problem2)
c(sigma_interval_1_problem2,sigma_interval_2_problem2)