### Spearman-s-Rank-Correlation-Test-R
Spearman's Rank Correlation Test can also be employed to identify heteroscedasticity. In order to conduct this test utilizing the R software package.
The Spearman's Rank Correlation Test serves the purpose of detecting heteroscedasticity within the data.
A significant test is conducted to identify the presence of heteroscedasticity, where heteroscedasticity is confirmed if the p-value is lower than the predetermined significance level, alpha.
```R
To call this function write "RankCorrelationTest(y,x)"
Give the value of "y" and "x"
Like:
y<-c(12.4, 14.4, 14.6, 16.0, 11.3, 10.0, 16.2, 10.4, 13.1, 11.3)
x<-c(12.1, 21.4, 18.7, 21.7, 12.5, 10.4, 20.8, 10.2, 16.0, 12.0)
```
Here alpha is "0.10"
Now check p-value
According to this data, t-value is 0.998, which lie is in one tail test between 0.2 and 0.15 with df=8, add 0.2+0.15, then divided by 2, i.e., p-value is 0.17
According to given data in file p-value is greater than alpha.
So, it effected insignificantly and have homocedasticity at 10% level of significance.
If p-value is less then alpha. Then it effected significantly and have heteroscedasticity at 10% level of significance.
