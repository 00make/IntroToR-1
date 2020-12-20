1
confidence_interval = 
n = 
Xbar = 
s = 
t = qt(0.5+confidence_interval/2,n-1)

x1 = Xbar - t*s/sqrt(n)
x2 = Xbar + t*s/sqrt(n)

print(x1)
print(x2)

2
confidence_interval = 
n = 
Xbar = 
s = 
t = qt(0.5+confidence_interval/2,n-1)

x1 = Xbar - t*s/sqrt(n)
x2 = Xbar + t*s/sqrt(n)

print(x1)
print(x2)

3
confidence_interval = 0.95
n = 76
Xbar = 103.9
s = 15
t = qt(0.5+confidence_interval/2,n-1)
x1 = Xbar - t*s/sqrt(n)
x2 = Xbar + t*s/sqrt(n)
print(x1)
print(x2)

t=qnorm(0.975)
n=(t*s*1)^2
print(n)


4
confidence_interval = 0.95
X=0.5
t = qnorm(0.5+confidence_interval/2)

X*(1-X)/(0.025/t)^2
向上取整

X=0.47
n=1770
t=0.0215/(sqrt(X*(1-X)/n))
t
(2*pnorm(t)-1)*100

5
confidence_interval = 0.99

X=362/525
t = qnorm(0.5+confidence_interval/2)

x1 = X - t*sqrt(X*(1-X)/525)
x2 = X + t*sqrt(X*(1-X)/525)

x1
x2
t*sqrt(X*(1-X)/525)








6
x= c(0.877,0.923,0.909,0.983,0.912,0.908,0.913,0.924,0.952,0.897)
confidence_interval = 0.9

n = length(x)
Xbar = mean(x)
s = sd(x)
t = qt(0.5+confidence_interval/2,n-1)

x1 = Xbar - t*s/sqrt(n)
x2 = Xbar + t*s/sqrt(n)

x1
x2

7
x= c()
confidence_interval = 

n = length(x)
Xbar = mean(x)
s = sd(x)
t = qt(0.5+confidence_interval/2,n-1)

x1 = Xbar - t*s/sqrt(n)
x2 = Xbar + t*s/sqrt(n)

print(x1)
print(x2)