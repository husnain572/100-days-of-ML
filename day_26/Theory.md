# Transformations in Machine Learning (Function & Power Transformations)

## 1. Why Do We Need Transformations?

### Problem:
- Data is often **skewed (not normally distributed)**
- Many ML algorithms assume **normal distribution**
- Skewed data leads to:
  - Poor model performance
  - Non-linear relationships

### Goal:
- Make data **more normal (Gaussian-like)**
- Improve performance of models (especially linear models)


## 2. Types of Transformations

# 2.1 Function Transformer

Applies mathematical functions directly to data.

## 1. Log Transformation

### Formula:
$$
x' = \log(x)
$$

### Key Points:
- Works only for **positive values**
- Cannot handle **zero or negative values**

### Effect:
- Converts **right-skewed data → more normal**
- Compresses large values

### When to Use:
- Data is **right skewed (long tail on right)**

### Example:
- Income, population, sales data


`Tip`: To handle zero we can take log1p, it first add one in each value and then transform.


## 2. Reciprocal Transformation

### Formula:
$$
x' = \frac{1}{x}
$$

### Key Points:
- Strong transformation
- Can distort relationships if not used carefully

### Effect:
- Flips distribution
- Reduces impact of large values

### When to Use:
- Highly skewed data
- When inverse relationship exists

## 3. Square Root Transformation

### Formula:
$$ 
x' = \sqrt{x}
$$

### Key Points:
- Works on **non-negative data**
- Less aggressive than log transform

### Effect:
- Reduces skewness
- Stabilizes variance

### When to Use:
- Mildly skewed data  
- Often used for **count data**

## 4. Custom Transformation

### Definition:
- Apply any user-defined mathematical function

### Examples:
<p align="center">
  x², x³
</p>

<p align="center">
  sin(x), eˣ
</p>

### When to Use:
- Based on domain knowledge
- When standard transforms don’t work


# 2.2 Power Transformer

Automatically finds best transformation to make data normal.

## 1. Box-Cox Transformation

### Formula (general form):
$$
x' = \frac{x^\lambda - 1}{\lambda}
$$

### Key Idea:
- Finds optimal value of **λ (lambda)**
- Applies power transformation accordingly

### Conditions:
- Works only on **positive data**

### Effect:
- Makes data **more Gaussian**
- Stabilizes variance

### When to Use:
- Data is positive and skewed

## 2. Yeo-Johnson Transformation

### Key Idea:
- Extension of Box-Cox

### Advantage:
- Works on:
  - Positive values
  - Zero
  - Negative values

### When to Use:
- Data contains **negative values**

# 3. How to Check if Data is Normal?


## 1. Distribution Plot
```python
sns.distplot(data)
````

* Bell-shaped curve → Normal distribution

## 2. Skewness

```python
pd.skew()
```

### Interpretation:

* Skew ≈ 0 → Normal
* Skew > 0 → Right skewed
* Skew < 0 → Left skewed

## 3. QQ Plot

* Compare data distribution with normal distribution

### Interpretation:

* Points lie on straight line → Normal
* Deviations → Not normal

# 4. When to Apply Transformation?

### Apply When:

* Data is **skewed**
* Using **linear models**
* Want to improve model performance

# 5. Algorithms That Do NOT Care About Distribution

These models are **not sensitive to skewness or scaling**:

* Decision Trees
* Random Forest
* XGBoost
* Gradient Boosting

### Why?

* They split data based on conditions, not distribution

# 6. Summary Table

| Transformation | Works On   | Handles Negative | Use Case                |
| -------------- | ---------- | ---------------- | ----------------------- |
| Log            | Positive   | No               | Right skewed data       |
| Square Root    | ≥ 0        | No               | Mild skew               |
| Reciprocal     | Positive   | No               | Strong skew             |
| Box-Cox        | Positive   | No               | Automatic normalization |
| Yeo-Johnson    | All values | Yes              | Negative + skewed data  |

# 7. Final Revision Points

* Transformation makes data **more normal**
* Improves **linear model performance**
* Log → best for right skew
* Box-Cox → automatic (positive only)
* Yeo-Johnson → works with negative data

If confused:

* Positive data → Box-Cox
* Negative data → Yeo-Johnson
* Simple case → Log transform

