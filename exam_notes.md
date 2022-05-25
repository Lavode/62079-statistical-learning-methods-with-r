# Common questions

- One question 'programming with R'

## Example questions

- Given p value of x, do we discard or reject H0?
  - Usually as e.g output of student's t test -> interpret that one

- Given output of linear model, what can you say about model quality
  - Are all coefficients important?

- LDA vs linear regression:
  - When to use what
  - Numbers of parameters of each?
  - => Slides 06b, p 59
  - When does LDA perform badly?
  - => Slides 06b, p 60

- LDA vs k-NN vs others
  - => Slides 06b, pp 66

- Curse of dimensionality
 - => Slides 09, p 17

- Use RNG seed for reproducible train/test split

- Given similarity matrix, find most similar pairs
  - Show merging path if e.g. applying single-link (max similarity) merging
  - => Slides 09, pp 42

# Utilities

- Pocket calculator


# Modality

- 6-7 questions
- All of them equally important
- Relatively short expected answers

- Some questions on R:
  - Provide function computing 2nd smallest value
  - Provide function calculating difference between mean and median
  - ...

- Some questions on preprocessing
  - How do you get an overview of the data
  - What constraints might you enforce?
    - Age > 0, Salary > 0, ...

- What are type-1, type-2 errors?

- Statistical tests
 - What is df?
   - Degrees of freedom, 1-number of observations (for t test)

- Linear regression
  - 3 Weeks of courses, so will be present for sure
  - Quality will depend on how well actual model aligns with linear model
  - How can you verify it's a linear relationship?
    - Plot and check visually
    - "Might also have to plot log(x), ..."
      - Ed: Is it actually a /linear/ model then?
  - Effect of RSS=0?
    - All points of data are on predicted line
  - Example:
    - P value of intercept high -> cannot reject H0 that intercept = 0
    - P value of coefficient low -> can reject H0 that coefficient = 0

- CV vs hold-out
  - CV tends to be more stable than hold-out

- Logistic regression
  - What's the meaning of Fisher scoring iterations?
    - We have no analytical formula for the beta_i coefficients, so their
      calculation works iteratively
  - AIC
    - Estimates loss of information in model. Lower = better

- QDA vs LDA
  - LDA assumes same variance for all classes
    - Good if this holds, or we have not enough data to estimate individual
      variances
  - QDA assumes separate variance per class
    - Good if this holds AND we have enough data to actually estimate the
      per-class variance

- CART
  - How to prevent overfitting?
    - Prune tree
      - Either with e.g. eval set
      - Or from get go by shrinking methodology (e.g. penalize number of nodes)

## Recap

- 2-3 exercises R
- 1 theoretical (e.g. preprocessing)
- 3-4 practical (interpret model output, what to use, ...)

# TODO

Things to consider, as I seemingly fell asleep during:
- Random forests
