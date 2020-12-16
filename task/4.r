qchisq(0.99,22)

qchisq(0.005,22)

#######problem_1#######
print("#######problem_1#######")
area_problem1 = 0.995 #题目所给出的右侧区间值
df_problem1 = 22
qchisq(1-area_problem1,df_problem1)

#######problem_2#######
print("#######problem_2#######")
data_problem2 = c(41.3, 45.1, 38.8, 40.5, 40.3, 32.8, 32.8, 47.7,37.4, 37.4, 32.5, 41.4, 34.5, 32.1, 41) #题目数据
n_problem2 = length(data_problem2)
mean_problem2 = mean(data_problem2)
s_problem2 = sd(data_problem2)

alpha_problem2 = 0.03 #根据题目所给的区间alpha值输入，比如90%区间对应的alpha是0.1
df_problem2 = n_problem2 - 1
chi_square_value_1_problem2 = qchisq(1-alpha_problem2/2,df_problem2)
chi_square_value_2_problem2 = qchisq(alpha_problem2/2,df_problem2)
sigma_square_interval_1_problem2 = ((n_problem2-1)*s_problem2^2)/chi_square_value_1_problem2
sigma_square_interval_2_problem2 = ((n_problem2-1)*s_problem2^2)/chi_square_value_2_problem2
sigma_interval_1_problem2 = sqrt(((n_problem2-1)*s_problem2^2)/chi_square_value_1_problem2)
sigma_interval_2_problem2 = sqrt(((n_problem2-1)*s_problem2^2)/chi_square_value_2_problem2)
c(sigma_square_interval_1_problem2,sigma_square_interval_2_problem2)
c(sigma_interval_1_problem2,sigma_interval_2_problem2)

#######problem_3#######
print("#######problem_3#######")
miu_problem3_1 = 11 #题目给出的平均值
n_problem3 = 49 #题目给的样本数目
sigma_problem3 = 6 #题目给的sigma值
paste("{x_bar|x_bar≤",miu_problem3_1,"−c}")

alpha_problem3 = 0.05 #题目给的alpha值
z_value_problem3 = qnorm(1-alpha_problem3)
c_problem3 = z_value_problem3*(sigma_problem3/sqrt(n_problem3))
c_problem3

miu_problem3_2 = 9 #实际的平均值
x_1_problem3 = miu_problem3_1 - c_problem3
x_2_problem3 = miu_problem3_1 + c_problem3
z_1_problem3 = (x_1_problem3 - miu_problem3_2)/(sigma_problem3/sqrt(n_problem3))
z_2_problem3 = (x_2_problem3 - miu_problem3_2)/(sigma_problem3/sqrt(n_problem3))
pnorm(z_2_problem3) - pnorm(z_1_problem3)

#######problem_4#######
print("#######problem_4#######")
print("sigma")
n_problem4 = 45 #题目所的样本数目
xbar_problem4 = 104 #题目给的x_bar
s_problem4 = 213 #题目给的标准差
alpha_problem4 = 0.01
mean_problem4 = 0 #题目给的平均值
test_statistic_problem4 = (xbar_problem4 - mean_problem4)/(s_problem4/sqrt(n_problem4))
test_statistic_problem4
z_value_problem4 = qnorm(1-alpha_problem4/2)
z_value_problem4
print("not sufficient")

#######problem_5#######
print("#######problem_5#######")
print("s")
n_problem5 = 150 #题目给的样本量
xbar_problem5 = 28.8   #题目给的xbar
s_problem5 = 2.6 #题目给的标准差
miu_problem5 = 27.8 #题目给的平均值
alpha_problem5 = 0.05 #题目给的significance level
z_value_problem5 = qnorm(1-alpha_problem5/2)
critical_value_1_problem5 = miu_problem5 - z_value_problem5*s_problem5/sqrt(n_problem5)
critical_value_2_problem5 = miu_problem5 + z_value_problem5*s_problem5/sqrt(n_problem5)
critical_value_1_problem5 = (critical_value_1_problem5-miu_problem5)/(s_problem5/sqrt(n_problem5))
critical_value_2_problem5 = (critical_value_2_problem5-miu_problem5)/(s_problem5/sqrt(n_problem5))
critical_value_2_problem5
critical_value_1_problem5
test_static_problem5 = (xbar_problem5-miu_problem5)/(s_problem5/sqrt(n_problem5))
test_static_problem5
print("no sufficient evidence to reject")

#######problem_6#######
print("#######problem_6#######")
n_problem6 = 22 #题目给的样本数
xbar_problem6 = 95 #题目给的xbar
s_problem6 = 12 #题目给的标准差
miu_problem6 = 90 #题目给的平均值
alpha_problem6 = 0.05 #题目给的significance level
df_problem6 = n_problem6 - 1
df_problem6
t_value_problem6 = qt(1-alpha_problem6,df_problem6)
t_value_problem6
test_statistic_problem6 = (xbar_problem6-miu_problem6)/(s_problem6/sqrt(n_problem6))
test_statistic_problem6
print("no sufficient evidence to reject")

#######problem_7#######
print("#######problem_7#######")
miu_problem7 = 61.3 #题目给的平均值
data_problem7 = c(66.4, 65.3, 61.2, 67.4, 66.1, 65.8, 69.8, 64.5, 65.5, 63.9) #题目给的样本数据
n_problem7 = length(data_problem7)
df_problem7 = n_problem7 - 1
alpha_problem7 = 0.05 #题目给的significance level
xbar_problem7 = mean(data_problem7)
xbar_problem7
s_problem7 = sd(data_problem7)
s_problem7
test_statistic_problem7 = (xbar_problem7 - miu_problem7)/(s_problem7/sqrt(n_problem7))
test_statistic_problem7
critical_value_problem7 = qt(1-alpha_problem7,df_problem7)
critical_value_problem7
print("there is sufficient evidence")