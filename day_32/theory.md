# Feature Construction & Feature Splitting

These are **feature engineering techniques** used to improve model performance.

# 1. Feature Construction

## Definition
- Creating **new features** from existing features.
- Goal: Extract **more useful information** from raw data.

## Why Do We Need It?
- Raw data is often **not informative enough**
- Helps model **learn better patterns**
- Improves accuracy


## Techniques of Feature Construction

### 1. Mathematical Combination
- Combine existing features using math operations

**Examples:**
- `total_price = price × quantity`
- `BMI = weight / (height^2)`

### 2. Date & Time Features
- Extract useful parts from date

**Examples:**
- Date → day, month, year
- Timestamp → hour, weekday, weekend

### 3. Domain Knowledge Features
- Use real-world understanding

**Examples:**
- Age from `date_of_birth`
- Customer lifetime value

### 4. Binning (Discretization)
- Convert continuous → categorical

**Example:**
- Age:
  - 0–18 → Child  
  - 18–60 → Adult  
  - 60+ → Senior  

### 5. Interaction Features
- Combine multiple features

**Example:**
- `rooms × area`
- `experience × education_level`

## When to Use Feature Construction?
When:
- Data is simple but patterns are complex  
- Need to add more meaningful features  
- Improve model performance  


# 2. Feature Splitting

## Definition
- Breaking a **single feature into multiple features**

## Why Do We Need It?
- Some features contain **hidden information**
- Splitting helps extract **detailed patterns**

## Techniques of Feature Splitting

### 1. String Splitting

**Example:**
- Full Name → First Name + Last Name  
- Email → Username + Domain  

### 2. Date Splitting

**Example:**
- Date → Day + Month + Year  

### 3. Address Splitting

**Example:**
- Address → City + State + Country  

### 4. Combined Feature Separation

**Example:**
- "5BHK" → Rooms = 5, Type = BHK  

## When to Use Feature Splitting?
When:
- Feature contains **multiple pieces of information**
- Data is in **combined format**
- Need more granular features


# 3. Feature Construction vs Feature Splitting

| Feature                  | Feature Construction           | Feature Splitting              |
|-------------------------|-------------------------------|--------------------------------|
| Meaning                 | Create new features           | Break existing feature          |
| Input                   | Multiple or single features   | Single feature                  |
| Output                  | New feature                   | Multiple features               |
| Example                 | price × quantity              | Full name → first + last        |

# 4. Real-Life Example

### Dataset:
| Name        | Date       | Price | Quantity |
|-------------|-----------|-------|----------|
| Ali Khan    | 2024-01-10| 100   | 2        |

### After Feature Engineering:

#### Feature Splitting:
- Name → First_Name, Last_Name  
- Date → Day, Month, Year  

#### Feature Construction:
- total_price = 100 × 2 = 200  

# 5. Final Summary

- **Feature Construction** → Create new features  
- **Feature Splitting** → Break complex features  
- Both help models:
  - Learn better  
  - Improve accuracy  

Rule:
- If information is hidden → **Split it**  
- If information is missing → **Construct it**  
