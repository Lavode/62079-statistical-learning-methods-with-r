# Linear model

- Good model will have multiple R-squared of 0.6 - 0.75
- To find e.g. best univariate predictor: Check RSS (of MSE) of all possible
  choices, minimize.

# Model collinearity

If we have a model where:
- A few predictors are highly significant
- The others are completely insignificant

Naive approach: Remove all predictors which are insignificant.

Then it's possible that the predictors are highly correlated.
Better approach: Remove one predictor which is highly correlated with all the
others. This might produce a model where all remaining n-1 predictors are
significant, leading to a better model than the naive approach.

NB: In certain models (e.g. LDA), this will be detected on its own, and a
warning be output. Others (e.g. GLM) this has to be detected by the user.

## Impact

At least with LDA, leaving collinear ones in seems not to hurt the model in
terms of quality. It does make it more complex than needed though, so maybe
it's mostly an aesthetic issue rather than a practical one.

# Ridge regression

- Higher bias but lower variance than ordinary least-squares models
- Hence better if predictors in available data have high variance
