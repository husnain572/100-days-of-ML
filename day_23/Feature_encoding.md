# Encoding in Machine Learning

# 1. Types of Data

## A. Numerical Data
- Already in numbers → No encoding needed  
**Example:** Age, Salary

## B. Categorical Data

### 1. Nominal Data (No Order)
- Categories have **no ranking**
- Examples:
  - Color → Red, Blue, Green
  - City → Lahore, Karachi, Islamabad
  - Yes / No

### 2. Ordinal Data (Has Order)
- Categories have **meaningful order**
- Examples:
  - Education → School < College < University  
  - Size → Small < Medium < Large  

# 2. Encoding Techniques

## 2.1 One-Hot Encoding (OHE)

### Apply On:
**Nominal Data (No Order)**

### What It Does:
- Converts each category into a **separate binary column**

### Example:

Original:
| Color |
|------|
| Red  |
| Blue |

After OHE:
| Red | Blue |
|-----|------|
| 1   | 0    |
| 0   | 1    |

### When to Use:
Use when:
- No order exists
- Categories are **few in number**

Avoid when:
- Too many categories (creates too many columns → curse of dimensionality)

## 2.2 Ordinal Encoding

### Apply On:
**Ordinal Data (Ordered categories)**

### What It Does:
- Assigns numbers based on order

### Example:

| Size   | Encoded |
|--------|--------|
| Small  | 1      |
| Medium | 2      |
| Large  | 3      |

### When to Use:
Use when:
- There is **clear ranking**

Avoid when:
- No natural order (will mislead model)

## 2.3 Label Encoding

### Apply On:
**Target Variable (Y)** in classification problems

### What It Does:
- Converts categories into numbers

### Example:

| Target | Encoded |
|--------|--------|
| Spam   | 1      |
| Not Spam | 0    |

### IMPORTANT RULE

If categorical column is in:
- **X (features)** → Use **Ordinal Encoder / One-Hot Encoding**
- **Y (target)** → Use **Label Encoder**

### Why Not Use Label Encoding on X?
- It introduces **fake order**

Example:
- Red = 1, Blue = 2, Green = 3  
Model may think: Green > Blue > Red --> (WRONG)
# 3. Your Important Rule 
Agar X main categorical column ho:
- Use **Ordinal Encoder** (if ordered)
- Use **One-Hot Encoding** (if not ordered)

Agar Y categorical ho:
- Use **Label Encoder**

# 4. Train-Test Split Rule 

ALWAYS:
1. Split data first  
2. Then apply encoding  

Never encode before split (DATA LEAKAGE)

# 5. Practical Decision Guide (VERY IMPORTANT)

## Step 1: Check Data Type

| Data Type | Encoding |
|----------|---------|
| Numerical | No encoding |
| Nominal   | One-Hot Encoding |
| Ordinal   | Ordinal Encoding |

## Step 2: Check Position

| Variable | Encoding |
|----------|---------|
| X (features) | OHE / Ordinal |
| Y (target)   | Label Encoding |

# 6. Real-Life Examples

## Example 1: House Price Prediction

| Feature | Type | Encoding |
|--------|------|---------|
| City   | Nominal | One-Hot |
| Size   | Ordinal | Ordinal Encoding |
| Price  | Target (numeric) | No encoding |

## Example 2: Email Spam Classification

| Feature | Type | Encoding |
|--------|------|---------|
| Email Text | Categorical | Vectorization |
| Spam/Not Spam (Y) | Target | Label Encoding |


## Example 3: Customer Dataset

| Feature | Type | Encoding |
|--------|------|---------|
| Gender | Nominal | One-Hot |
| Education | Ordinal | Ordinal Encoding |
| Churn (Y) | Target | Label Encoding |

# 7. Common Mistakes
- Using Label Encoding on nominal features  
- Using Ordinal Encoding when no order exists  
- Applying encoding before train-test split  
- Creating too many columns with One-Hot Encoding  

# 8. Final Revision Summary

- Nominal → One-Hot Encoding  
- Ordinal → Ordinal Encoding  
- Target (Y) → Label Encoding  

Golden Rule:
- X → OHE / Ordinal  
- Y → Label Encoding  

Always:
- Train-test split → THEN encoding  
