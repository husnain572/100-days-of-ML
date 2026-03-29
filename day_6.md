# Instance-Based vs Model-Based Learning

## 1. Instance-Based Learning (Memory-Based Learning)

### Definition
- Stores **training data (instances)** and makes predictions using **similarity measures**.
- Does **not build an explicit model**.
- Learns only when a query is made (lazy learning).

### How It Works
1. Store all training data
2. For a new input → find similar instances
3. Predict based on neighbors

### Examples
- K-Nearest Neighbors (KNN)
- Case-Based Reasoning

### Key Characteristics
- No training phase (or very minimal)
- High memory usage
- Slow prediction (search required)
- Sensitive to irrelevant features

## 2. Model-Based Learning

### Definition
- Builds a **generalized model** from training data.
- Uses this model to make predictions.

### How It Works
1. Train model on dataset
2. Learn parameters (weights, rules)
3. Use model for predictions

### Examples
- Linear Regression
- Logistic Regression
- Decision Trees
- Neural Networks

### Key Characteristics
- Requires training phase
- Fast prediction
- Less memory usage (only model stored)
- Can generalize better

## 3. Instance-Based vs Model-Based Learning

| Feature                | Instance-Based Learning           | Model-Based Learning             |
|----------------------|----------------------------------|----------------------------------|
| Learning Type        | Lazy Learning                    | Eager Learning                   |
| Model Creation       | No explicit model                | Builds a model                   |
| Training Time        | Very low                         | High                             |
| Prediction Time      | High                             | Low                              |
| Memory Usage         | High (stores data)               | Low (stores model)               |
| Generalization       | Poor (depends on data)           | Good                             |
| Examples             | KNN                              | Regression, Trees, Neural Nets   |

## 4. How to Identify Them

### Instance-Based Learning If:
- Algorithm **stores full dataset**
- Uses **distance/similarity measures** (Euclidean, Manhattan)
- Prediction depends on **nearest data points**
- Example: KNN → distance calculation → instance-based

### Model-Based Learning If:
- Algorithm **learns parameters (weights, coefficients)**
- Builds a **mathematical model**
- Prediction uses **formula/model**
- Example: Linear Regression → equation → model-based

## Quick Trick to Remember

- **Instance-Based → "Remember data"**
- **Model-Based → "Learn pattern"**

## Summary

- Instance-Based: Store data → compare → predict  
- Model-Based: Learn model → generalize → predict  
