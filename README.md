# housing-prices-ames-ia
The research question of interest is to accurately predict a house's sale price in Ames, IA based upon 79 possible features. The resulting model can be used by buyers, sellers, and realtors to obtain an estimate (with a confidence interval) of what a house is worth. 

### Research Design and Modeling Methods
The research design is to use a base linear model utilizing ordinary least squares trained on a training set, validated, and then predict the sale price on a test set. With the linear model, there are transformations and non-linear components that can be used to shift the model from a purely linear model to a model that allows for non-linearity. 

In this modeling exercise, we use both the natural log transformation of the target feature and non-linear components. By taking the natural log of SalePrice, we can shift the distribution to a more normal distribution. This helps remove some of the non-linearity in the target variable itself. Another approach is to not take the natural log of the target variable but instead incorporate non-linear components on the right hand side of the model to handle the non-linearity of some of the relationships between SalePrice and independent variables. 

I end up generating four models. The first model is a linear model with no non-linear components. Instead, I take the natural log of the target variable, SalePrice, to deal with the non-linearity. The other three models I develop use non-linear components to deal with the non-linearity between the target variable and specific independent variables. I use an indicator function in one model, polynomials in another, and piecewise polynomials in a third. 

| Metric | Linear Model | Linear Model (Polynomials) | Linear Model (Indicator Function) | Linear Model (Piecewise Polynomials) |
|---     | ---          | ---                        |---                                |---                                   |
| Cross Validation R^2 Mean | 0.801 | 0.877 | 0.875 | 0.878 |
| Cross Validation R^2 Standard Deviation | 0.027 | 0.024 | 0.022 | 0.023 |
| Validation Set RMSE | 0.060 | 0.056 | 0.056 | 0.057 |
| Test Set RMSE | 0.18526 | 0.35116 | 0.34753 | 0.21672 |



### Results and Evaluation

### Discussion
