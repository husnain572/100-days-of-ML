# DATA CLEANING

# 1. Handling Missing Data (Core Concept)

Missing data means values are not available (NaN).

## 1.1 Strategies to Handle Missing Data

### 1. Remove Data
- Remove rows or columns containing missing values

#### Types:
- Remove entire row
- Remove entire column (if too many missing values)

### 2. Imputation (Most Important Approach)

Replace missing values with estimated values.

## 2.1 Types of Imputation

### A. Univariate Imputation (Single Column)

Uses only one feature.

### 1. Numerical Imputation

#### Methods:

### a) Mean Imputation
- Replace missing values with mean

#### When to use:
- Data is **normally distributed**

### b) Median Imputation
- Replace missing values with median

#### When to use:
- Data is **skewed**
- Outliers exist

### c) Random Imputation
- Replace missing values with random observed values from same column

#### Properties:
- Keeps distribution almost same
- Good for linear models

#### Disadvantages:
- Not suitable for tree-based models
- Needs storing original data (production issue)

### d) End of Distribution Imputation

Replace missing values with extreme values.

#### Formula:

Normal distribution:
$$
\mu \pm 3\sigma
$$
Skewed distribution:
$$
Q1 - 1.5 \times IQR \quad \text{or} \quad Q3 + 1.5 \times IQR
$$

#### When to use:
- Data is not missing completely at random (MNAR)

#### Disadvantages:
- Distorts distribution
- Affects variance and covariance

### e) Arbitrary Value Imputation

- Replace missing values with fixed value

#### Example:
- Numerical → -999
- Categorical → "Missing"

#### When to use:
- When missingness itself is informative

#### Disadvantages:
- Distorts distribution
- Affects statistical properties

### 2. Categorical Imputation

#### Methods:
- Most Frequent (Mode)
- Missing category ("Unknown")

## 2.2 Missing Indicator

- Add extra column:
  - 1 → value was missing
  - 0 → value was present

### Why use it?
- Captures information about missingness

## 2.3 Automatic Imputation
- Model-based or pipeline-based imputation
- Used in production systems

# 3. Complete Case Analysis (CCA)

## Definition
CCA means:
- Remove all rows that contain missing values


## Why called CCA?
Because analysis is done only on **complete rows (no missing values)**

## Assumption:
- Data must be **MCAR (Missing Completely At Random)**

## When to use CCA:
- Missing data < 5%
- Data is MCAR
- Large dataset available

## Advantages:
1. Simple and fast  
2. No data manipulation required  
3. Preserves distribution (if MCAR assumption holds)  

## Disadvantages:
1. Loss of data (can be huge)  
2. Biased results if data is not MCAR  
3. Production issue (model may fail on missing values)  

## Important Rule:
- If >95% data missing → drop column  
- If <5% missing → CCA is acceptable  

# 4. Multivariate Imputation

Uses **multiple features together** to estimate missing values.

## 4.1 KNN Imputer

### Working:
- Finds K nearest neighbors
- Uses similarity (distance) to fill missing values

### Distance used:
- Euclidean distance
- Nan-aware distance handling

### Advantages:
- More accurate than simple imputation  
- Captures relationships between features  

### Disadvantages:
- Computationally expensive  
- Slow on large datasets  
- Not good for production at scale  

## 4.2 Iterative Imputer (MICE Family)

### Full Name:
Multivariate Imputation by Chained Equations

### Assumption:
- Data is **Missing At Random (MAR)**

## How MICE Works:

1. Replace missing values with initial guess (mean)
2. Select one column with missing values
3. Predict missing values using other columns
4. Repeat for all columns
5. Iterate multiple times until stable

### Advantages:
- Very accurate  
- Uses full dataset relationships  

### Disadvantages:
- Slow  
- Computationally expensive  
- Complex implementation  

# 5. Comparison of Imputation Methods

| Method              | Speed | Accuracy | Best Use Case |
|-------------------|------|----------|---------------|
| Mean/Median        | Fast | Medium   | Simple data   |
| Random Imputation  | Medium | Medium | Linear models |
| KNN Imputer        | Slow | High     | Small datasets |
| MICE               | Very Slow | Very High | Research / high accuracy |
| CCA                | Fast | High (MCAR only) | Very small missing |

# 6. When to Use What (Golden Rules)

## Use CCA when:
- Missing < 5%
- Data is MCAR

## Use Mean/Median when:
- Simple baseline needed
- Fast solution required


## Use Median when:
- Data is skewed
- Outliers present


## Use KNN when:
- Dataset is small/medium
- Feature relationships are important

## Use MICE when:
- High accuracy needed
- Missing data is complex

## Use Arbitrary / End of Distribution when:
- Missing is informative
- Data is MNAR

# 7. Key Missing Data Mechanisms

| Type | Meaning |
|------|--------|
| MCAR | Missing completely random |
| MAR  | Missing depends on other variables |
| MNAR | Missing depends on itself |


# 8. Final Master Summary

- CCA → Remove missing rows (only MCAR)
- Simple Imputation → Mean/Median/Mode
- Advanced Imputation → KNN, MICE
- Special Cases → Arbitrary, End of Distribution
- Extra Power → Missing Indicator

# 9. Final Golden Statement

"Best missing data strategy depends on understanding WHY data is missing, not just filling it blindly."
