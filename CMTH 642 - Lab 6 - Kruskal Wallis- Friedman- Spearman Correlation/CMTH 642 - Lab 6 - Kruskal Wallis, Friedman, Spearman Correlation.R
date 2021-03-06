# Q1:
# The Kruskal Wallis test is a non parametric test, which means that the test doesn't assume your data comes from a particular distribution. 
# The test is the non parametric alternative to the One Way ANOVA and is used when the assumptions for ANOVA aren't met (like the assumption of normality). 
# It is sometimes called the one-way ANOVA on ranks, as the ranks of the data values are used in the test rather than the actual data points.
# The test determines whether the medians of two or more groups are different. 
# The hypotheses for the test are:
#H0: population medians are equal.
#H1: population medians are not equal.

# Sample question: A shoe company wants to know if three groups of workers have different salaries:
# Women: 23K, 41K, 54K, 66K, 78K
# Men: 45K, 55K, 60K, 70K, 72K
# Minorities: 18K, 30K, 34K, 40K, 44K
# 
# Step 1: Sort the data for all groups/samples into ascending order in one combined set.
# 18K
# 23K
# 30K
# 34K
# 40K
# 41K
# 44K
# 45K
# 54K
# 55K
# 60K
# 66K
# 70K
# 72K
# 78K
# 
# Step 2: Assign ranks to the sorted data points. Give tied values the average rank.
# 18K 1
# 23K 2
# 30K 3
# 34K 4
# 40K 5
# 41K 6
# 44K 7
# 45K 8
# 54K 9
# 55K 10
# 60K 11
# 66K 12
# 70K 13
# 72K 14
# 78K 15
# 
# Step 3: Add up the different ranks for each group/sample.
# Women: 23K, 41K, 54K, 66K, 90K = 2 + 6 + 9 + 12 + 15 = 44
# Men: 45K, 55K, 60K, 70K, 72K, 78K = 8 + 10 + 11 + 13 + 14 + 15 = 56
# Minorities: 18K, 30K, 34K, 40K, 44K = 1 + 3 + 4 + 5 + 7 = 20
# 
# Step 4: Calculate the test statistic:
# H = [(12/n(n + 1))sum(Tj^2/nj)] - 3(n + 1)
# 
# 
# Where:
#   
# n = sum of sample sizes for all samples,
# c = number of samples,
# Tj = sum of ranks in the jth sample,
# nj = size of the jth sample.
# h-test-2
# H = [(12/15(15 + 1)){44^2/5 + 56^2/5 + 20^2/5}] - 3(15 + 1)
# 
# 
# H = 6.72
# 
# Step 5: Find the critical chi-square value. With an alpha level of .05, the critical chi square value is 9.4877.
# 
# Step 5: Compare the H value from Step 4 to the critical chi-square value from Step 5.
# 
# If the critical chi-square value is less than the test statistic, reject the null hypothesis that the medians are equal.
# 
# The chi-square value is not less than the test statistic, so there is not enough evidence to suggest that the means are unequal.


kruskal.test(Ozone ~ Month, data = airquality) 
# At .05 significance level, we conclude that the monthly ozone density in New York 
# from May to September 1973 are nonidentical populations.


# Q2:
# Pearson r correlation: 
# Pearson r correlation is the most widely used correlation statistic to measure 
# the degree of the relationship between linearly related variables.  
# For example, in the stock market, if we want to measure how two stocks are related to each other, 
# Pearson r correlation is used to measure the degree of relationship between the two.  
# The Point-biserial correlation is conducted with the Pearson correlation formula 
# except that one of the variables is dichotomous.  
# The following formula is used to calculate the Pearson r correlation:
# pearson r correlation

# r = (N * sum(xy) - sum((x)(y)))/(sqrt([N * sum(x^2) - sum((x^2))][N * sum(y^2) - sum((y^2))]))
# 
# r = Pearson r correlation coefficient
# N = number of value in each data set
# sum(xy) = sum of the products of paired scores
# sum(x) = sum of x scores
# Sum(y) = sum of y scores
# sum(x^2) = sum of squared x scores
# sum(y^2) = sum of squared y scores
# Types of research questions a Pearson correlation can examine:
# Is there a statistically significant relationship between age, as measured in years, and height, measured in inches?
# Is there a relationship between temperature, measure in degree Fahrenheit, and ice cream sales, measured by income?
# Is there a relationship among job satisfaction, as measured by the JSS, and income, measured in dollars?
# Assumptions
# For the Pearson r correlation, both variables should be normally distributed (normally distributed variables have a bell-shaped curve). 
# Other assumptions include linearity and homoscedasticity.  Linearity assumes a straight line relationship between each of the variables in the analysis and homoscedasticity assumes that data is normally distributed about the regression line.

English = c(56,	75,	45,	71,	62,	64,	58,	80,	76,	61)
Math    = c(66, 70, 40, 60, 65, 56, 59, 77, 67, 63)

cor.test(English, Math, method = "pearson")

# Spearman rank correlation: Spearman rank correlation is a non-parametric test that is used to measure the degree of association between two variables.  
# It was developed by Spearman, thus it is called the Spearman rank correlation.  
# Spearman rank correlation test does not assume any assumptions about the distribution of the data and is the appropriate correlation analysis when the variables are measured on a scale that is at least ordinal.
# The following formula is used to calculate the Spearman rank correlation:
#   spearman rank correlation

# P = 1 - 6sum(di^2)/(n(n^2 - 1))
# P = Spearman rank correlation
# di = the difference between the ranks of corresponding values Xi and Yi
# n = number of value in each data set
# Questions Spearman Correlation Answers
# Is there a statistically significant relationship between participants' responses to two Likert scales questions?
# Is there a statistically significant relationship between how the horses rank in the race and the horses' ages?
# Assumptions
# Spearman rank correlation test does not make any assumptions about the distribution.  
# The assumptions of Spearman rho correlation are that data must be at least ordinal and scores on one variable must be montonically related to the other variable.

cor.test(English, Math, method = "spearman")


# Q3:
diets = data.frame(C = c(75, 67, 70, 75, 65, 71, 67, 67, 76, 68), 
                      F = c(57, 58, 60, 59, 62, 60, 60, 57, 59, 61),
                      G = c(58, 61, 56, 58, 57, 56, 61, 60, 57, 58),
                      FG = c(58, 59, 58, 61, 57, 56, 58, 57, 57, 59),
                      S = c(62, 66, 65, 63, 64, 62, 65, 65, 62, 67),
                      test = c(63, 64, 66, 65, 67, 68, 64, NA, NA, NA))
kruskal.test(diets)
boxplot(diets)


# Q4:
amphibians = data.frame(count = c(2, 48, 40, 3, 120, 81, 2, 16, 36, 7, 21, 17, 2, 14, 17),
               month = c(1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5),
               year = c(2004, 2005, 2006, 2004, 2005, 2006, 2004, 2005, 2006, 2004, 2005, 2006, 2004, 2005, 2006))

# Friedman's test is a non-parametric test for finding differences in treatments across multiple attempts. 
# Nonparametric means the test doesn't assume your data comes from a particular distribution (like the normal distribution). 
# Basically, it's used in place of the 2-way ANOVA test when you don't know the distribution of your data.

# Friedman's test is an extension of the sign test, used when there are multiple treatments. 
# In fact, if there are only two treatments the two tests are identical.

friedman.test(amphibians$count, amphibians$year, amphibians$month)

#or 
friedman.test(count ~ year | month, data= amphibians)

