# Feature Scaling

## What is Feature Scaling?
Feature Scaling is the process of **bringing all features to a similar scale/range** so that no feature dominates others due to its magnitude.

## Why Do We Need Feature Scaling?

### Problem:
- Different features have different ranges:
  - Age → 0–100  
  - Salary → 0–1,000,000  

### Without Scaling:
- Algorithms get **biased toward large-value features**
- Distance-based models become inaccurate
- Gradient descent becomes slow or unstable

### With Scaling:
- Faster convergence
- Better performance
- Fair contribution of all features

## Types of Feature Scaling
### 1. Standardization (Z-score Normalization)




### Where:
$$
\mu = mean= 0\\   
\sigma = standard deviation = 1  
$$

### Geometric Intuition
- Data is **centered around 0**
- Spread is adjusted so variance becomes 1
- Shapes the distribution without changing its form

Think: shifting + scaling data to a standard bell curve


### 2. Normalization (Min-Max Scaling)

$$
x' = \frac{x - x_{min}}{x_{max} - x_{min}}
$$

### Result:
- Values scaled between **0 and 1**


## Example

| Feature | Original | Standardized | Normalized |
|--------|----------|--------------|------------|
| Age    | 20       | -1.2         | 0.1        |
| Age    | 50       | 0.3          | 0.5        |
| Age    | 80       | 1.5          | 0.9        |


## Impact of Outliers

### On Standardization:
- Less sensitive (uses mean & std but still affected)

### On Normalization:
- **Highly sensitive**
- Outliers stretch range → compress normal values

### Example:
- If max = 1,000,000 → all other values become very small after normalization


## When to Use Standardization

Use Standardization when:
- Data has **outliers**
- Distribution is **Gaussian (normal)**
- Algorithms assume centered data


## Recommended Practices

### 1. Train-Test Split First
- Always:
  - Split data → THEN apply scaling
- Avoids **data leakage**

### 2. Apply Scaling on These Algorithms (Blindly)

- K-Means
- KNN (K-Nearest Neighbors)
- PCA
- ANN (Neural Networks)
- Gradient Descent-based models (Linear/Logistic Regression)

### 3. No Need to Scale These Algorithms 

- Decision Trees (DT)
- Random Forest (RF)
- XGBoost
- Gradient Boosting

Reason:
- These are **tree-based models**
- They split based on conditions, not distance

## Summary

- Feature Scaling = Normalize feature ranges  
- Helps in distance-based & gradient-based algorithms  
- Two main types:
  - Standardization → mean = 0, std = 1  
  - Normalization → range [0,1]  
- Always scale **after train-test split**  
- Not required for tree-based models  
