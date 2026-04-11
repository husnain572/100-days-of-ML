# Encoding Numerical Features (Complete Revision Notes)

Numerical features sometimes need transformation to improve model learning.  
Two main techniques are used:

1. Discretisation (Binning)  
2. Binarisation  

---

# 1. Discretisation (Binning)

## Definition
Discretisation is the process of converting a **continuous variable into discrete intervals (bins)**.

- Continuous values → grouped into ranges  
- Each range is called a **bin**

---

## Example

Age:
- 0–18 → Child  
- 18–60 → Adult  
- 60+ → Senior  

---

## Why Use Discretisation?

1. **Handle Outliers**
   - Extreme values get grouped into bins → impact reduces  

2. **Improve Value Spread**
   - Makes distribution more uniform  

3. **Simplify Data**
   - Complex continuous relationships become simpler  

4. **Capture Non-linear Patterns**
   - Useful for models that cannot capture non-linearity easily  

---

# 2. Types of Binning

---

## 2.1 Unsupervised Binning

- Does NOT use target variable (Y)

---

### A. Equal Width (Uniform Binning)

#### Formula:
\[
\text{Bin Width} = \frac{\text{max} - \text{min}}{\text{number of bins}}
\]

#### Working:
- Divide full range into equal-sized intervals

#### Example:
Range: 0–100  
Bins: 5  
→ Width = 20  
→ [0–20], [20–40], [40–60], [60–80], [80–100]

---

#### Properties:
- Handles outliers  
- Does NOT improve distribution spread  
- Very simple  

---

#### When to Use:
- Data is evenly distributed  
- Simplicity is required  

---

### B. Equal Frequency (Quantile Binning)

#### Working:
- Each bin contains **equal number of observations**

#### Example:
100 data points → 10 bins  
→ Each bin = 10 values  

---

#### Properties:
- Most commonly used  
- Handles outliers  
- Makes distribution uniform  

---

#### When to Use:
- Data is skewed  
- Balanced bins are required  

---

### C. K-Means Binning

#### Working:
- Uses K-Means clustering algorithm  
- Groups data into clusters instead of fixed intervals  

---

#### Properties:
- Captures natural groupings in data  
- More flexible than equal width  

---

#### When to Use:
- Data has clusters  
- Distribution is complex  

---

## 2.2 Supervised Binning

### Decision Tree Binning

#### Working:
- Uses decision tree splits  
- Bins are created based on target variable (Y)

---

#### Properties:
- Uses label information  
- Creates meaningful and predictive bins  

---

#### When to Use:
- Supervised learning problems  
- Strong relationship between feature and target  

---

## 2.3 Custom / Domain-Based Binning

#### Working:
- Bins are defined using domain knowledge or business rules  

---

#### Example:
Income:
- Low: < 20k  
- Medium: 20k–50k  
- High: > 50k  

---

#### When to Use:
- Business logic is known  
- Domain expertise is available  

---

# 3. Sklearn Implementation

### Library:
- `sklearn.preprocessing`

### Main Class:
- `KBinsDiscretizer`

### Supports:
- Uniform (equal width)  
- Quantile (equal frequency)  
- K-Means  

---

# 4. Binarisation

## Definition
Binarisation converts **continuous values into binary values (0 or 1)**.

---

## Working:
- Define a threshold  
- Value > threshold → 1  
- Value ≤ threshold → 0  

---

## Example:
Marks:
- > 50 → Pass (1)  
- ≤ 50 → Fail (0)  

---

## Where It is Used:
- Computer vision (pixel thresholding)  
- Image processing  
- Simple classification tasks  

---

# 5. Discretisation vs Binarisation

| Feature          | Discretisation              | Binarisation              |
|----------------|----------------------------|---------------------------|
| Output          | Multiple bins              | Only 0 or 1               |
| Use Case        | Grouping values            | Threshold decision        |
| Information     | More preserved             | Less preserved            |

---

# 6. Important Observations

- Equal Width → simple but not adaptive  
- Quantile → most useful in real-world  
- K-Means → best for clustered data  
- Decision Tree → best when target matters  
- Custom → best when domain knowledge exists  

---

# 7. Golden Rules (Revision Section)

1. Continuous → categorical → use discretisation  
2. Simple threshold → use binarisation  
3. Skewed data → use quantile binning  
4. Clustered data → use K-Means binning  
5. Target relationship → use decision tree binning  
6. Business rules → use custom binning  

---

# Final Summary

- Discretisation = Continuous → multiple bins  
- Binarisation = Continuous → binary (0/1)  
- Choose method based on:
  - Data distribution  
  - Presence of outliers  
  - Use case (unsupervised vs supervised)  
