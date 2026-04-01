# Feature Engineering in Machine Learning

Feature Engineering is the process of **transforming raw data into meaningful features** that improve model performance.

## 1. Feature Transformation
Transform existing features into a better format.

### A. Missing Value Imputation
- Handle missing data instead of dropping rows.

#### Methods:
- Mean / Median / Mode imputation
- Forward/Backward fill
- Model-based imputation (KNN, regression)

**Example:**
- Replace missing age with median age

### B. Handling Categorical Features
Convert categorical data into numerical form.

#### Methods:
- Label Encoding → Assign numbers (0,1,2…)
- One-Hot Encoding → Create binary columns
- Target Encoding → Replace with mean target value

**Example:**
- Color: Red, Blue → [1,0], [0,1]

### C. Outlier Detection & Handling
- Identify extreme values that affect model.

#### Methods:
- Z-score
- IQR (Interquartile Range)
- Visualization (boxplot)

#### Handling:
- Remove outliers
- Cap values (winsorization)

**Example:**
- Salary = 1,000,000 (outlier) → cap to upper limit

### D. Feature Scaling
- Bring features to same scale.

#### Methods:
- Normalization (Min-Max Scaling)
- Standardization (Z-score scaling)

**Example:**
- Age (0–100) vs Salary (0–1,000,000) → scale both

## 2. Feature Construction
Create **new features** from existing ones.

### Techniques:
- Combine features
- Extract parts (date → day, month, year)
- Domain knowledge-based features

**Example:**
- `date_of_birth` → age  
- `price × quantity` → total_amount

## 3. Feature Selection
Select the **most important features** and remove irrelevant ones.

### Methods:

#### A. Filter Methods
- Based on statistical tests
- Example: correlation, chi-square

#### B. Wrapper Methods
- Use model performance
- Example: Recursive Feature Elimination (RFE)

#### C. Embedded Methods
- Built into models
- Example: Lasso (L1 regularization), Tree feature importance

**Example:**
- Remove “ID” column (no predictive power)

## 4. Feature Extraction
Reduce features by transforming them into a **lower-dimensional space**.

### Techniques:
- PCA (Principal Component Analysis)
- LDA (Linear Discriminant Analysis)
- Autoencoders (Deep Learning)

**Example:**
- Convert 100 features → 10 principal components

## Summary

- **Feature Transformation:** Clean & prepare data  
- **Feature Construction:** Create new features  
- **Feature Selection:** Keep important features  
- **Feature Extraction:** Reduce dimensionality  

Good features = Better model performance.
