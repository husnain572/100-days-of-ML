# 1. What is Normalisation?
Normalisation is a type of **feature scaling** where values are transformed into a **specific range (usually [0,1])**.

Goal:
- Bring all features to **same scale**
- Improve performance of distance-based & gradient-based algorithms

# 2. Types of Normalisation / Scaling

## 2.1 Min-Max Scaling 
### Formula:
$$
x' = \frac{x - x_{min}}{x_{max} - x_{min}}
$$
### Range:
**[0, 1]**

### Intuition:
- Smallest value → 0  
- Largest value → 1  
- Everything else scaled proportionally in between

### Example:
| Value | Scaled |
|------|--------|
| 10   | 0      |
| 20   | 0.5    |
| 30   | 1      |

### When to Use:
When:
- Data has **known boundaries**
- No significant outliers
- Neural Networks / KNN / K-Means

Avoid:
- When **outliers exist** (very sensitive)

## 2.2 Mean Normalization

### Formula:
$$
x' = \frac{x - \mu}{x_{max} - x_{min}}
$$

### Intuition:
- Centers data around **0**
- Range roughly becomes **[-1, 1]**

### When to Use:
When:
- You want **centering + scaling**
- Useful before gradient-based algorithms

## 2.3 MaxAbs Scaling

### Formula:
$$
x' = \frac{x}{|x_{max}|}
$$

### Range:
**[-1, 1]**

### Intuition:
- Divide by maximum absolute value
- Preserves **zero values and sparsity**

### When to Use:
Best for:
- **Sparse data** (e.g., NLP, TF-IDF)
- When memory efficiency matters

## 2.4 Robust Scaling

### Formula:
$$
x' = \frac{x - \text{Median}}{IQR}
$$
Where:
$$
IQR = Q3 - Q1
$$

### Intuition:
- Uses **median instead of mean**
- Uses **IQR instead of range**
- Resistant to outliers

### When to Use:
When:
- Dataset has **many outliers**
- Data is **skewed**

# 3. Normalisation vs Standardisation

| Feature              | Normalisation                     | Standardisation                  |
|---------------------|----------------------------------|----------------------------------|
| Range               | [0,1] (or [-1,1])               | No fixed range                   |
| Formula Base        | Min & Max                        | Mean & Std Dev                   |
| Outlier Sensitivity | High                             | Moderate                         |
| Distribution        | Changes shape                    | Preserves distribution shape     |
| Output Mean         | Not fixed                        | Mean = 0                         |
| Output Std          | Not fixed                        | Std = 1                          |

## Standardisation Formula (Important)

$$
z = \frac{x - \mu}{\sigma}
$$

# 4. When to Use Normalisation vs Standardisation

## Use Normalisation When:
Data is:
- **Bounded** (pixel values, probabilities)
- Used in **Neural Networks**
- Used in **distance-based models**

Algorithms:
- KNN
- K-Means
- ANN

## Use Standardisation When:
Data:
- Has **outliers**
- Is **normally distributed (Gaussian)**
- Used in **linear models**

Algorithms:
- Linear Regression
- Logistic Regression
- PCA
- Gradient Descent models

# 5. Where to Use Each Type

## Min-Max Scaling
Use when:
- No outliers
- Need strict [0,1] range

## Mean Normalization
Use when:
- Want centered data
- Training gradient-based models

## MaxAbs Scaling
Use when:
- Sparse data (many zeros)
- NLP / text data

## Robust Scaling
Use when:
- Heavy outliers present
- Skewed data

# 6. Impact of Outliers 

| Method          | Impact of Outliers |
|----------------|-------------------|
| Min-Max         | Very sensitive |
| Mean Norm       | Sensitive      |
| MaxAbs          | Sensitive      |
| Robust Scaling  | Resistant      |
| Standardisation | Moderate       |


# 7. Golden Rules

### 1. Train-Test Split First
ALWAYS:
- Split → then scale  
- Never scale before splitting (data leakage)


### 2. Fit Only on Training Data
```python
scaler.fit(X_train)
X_train = scaler.transform(X_train)
X_test = scaler.transform(X_test)
````

### 3. Apply Scaling Blindly On:

MUST APPLY:

* KNN
* K-Means
* PCA
* ANN
* Gradient Descent models

### 4. No Need for Scaling:

DO NOT APPLY:

* Decision Trees
* Random Forest
* XGBoost
* Gradient Boosting

# 8. Final Summary

* **Normalisation** → scale to fixed range ([0,1])
* **Standardisation** → mean = 0, std = 1
* **MinMax** → simple, sensitive to outliers
* **Mean Norm** → centered scaling
* **MaxAbs** → best for sparse data
* **Robust** → best for outliers
* Outliers present? → **Robust / Standardisation**
* Neural network? → **Normalisation**
* Sparse data? → **MaxAbs**
