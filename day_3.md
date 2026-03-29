# Types of Machine Learning

Machine Learning can be categorized based on:
1. Supervision
2. Algorithms
3. Types of Data

## 1. Based on Supervision

### A. Supervised Learning
- Model is trained on **labeled data** (input + correct output).
- Goal: Learn mapping from input → output.

#### Subcategories:

1. **Regression**
   - Output is continuous (numeric).
   - Example:
     - Predict house price based on size, location.
     - Predict salary based on experience.

2. **Classification**
   - Output is categorical (labels).
   - Example:
     - Email spam detection (spam / not spam)
     - Disease prediction (positive / negative)

### B. Unsupervised Learning
- Model is trained on **unlabeled data**.
- Goal: Find hidden patterns or structure.

#### Subcategories:

1. **Clustering**
   - Group similar data points.
   - Example:
     - Customer segmentation
     - Grouping similar news articles

2. **Dimensionality Reduction**
   - Reduce number of features while preserving information.
   - Example:
     - Reducing 100 features → 2 for visualization

3. **Anomaly Detection**
   - Detect rare or unusual data points.
   - Example:
     - Fraud detection in transactions
     - Network intrusion detection

4. **Association Rule Learning**
   - Find relationships between variables.
   - Example:
     - Market basket analysis (people who buy bread also buy butter)

### C. Semi-Supervised Learning
- Mix of labeled and unlabeled data.
- Useful when labeling is expensive.

**Example:**
- Image classification with few labeled images and many unlabeled ones.

### D. Reinforcement Learning
- Agent learns by interacting with environment using rewards & penalties.

**Example:**
- Self-driving cars
- Game playing (like chess, Atari)


## 2. Based on Algorithms

### A. Linear Models
- Assume linear relationship.
- Examples:
  - Linear Regression
  - Logistic Regression

### B. Tree-Based Models
- Use decision trees for prediction.
- Examples:
  - Decision Tree
  - Random Forest

### C. Distance-Based Models
- Use similarity/distance between data points.
- Example:
  - K-Nearest Neighbors (KNN)

### D. Probabilistic Models
- Based on probability theory.
- Example:
  - Naive Bayes

### E. Neural Networks (Deep Learning)
- Multi-layered networks.
- Examples:
  - ANN, CNN, RNN

### F. Clustering Algorithms
- Used in unsupervised learning.
- Examples:
  - K-Means
  - DBSCAN

## 3. Based on Types of Data

### A. Structured Data
- Organized in rows & columns (tables).
- Example:
  - CSV files, databases

### B. Unstructured Data
- No fixed format.
- Examples:
  - Images, audio, videos, text

### C. Semi-Structured Data
- Partially organized.
- Examples:
  - JSON, XML files

## Summary

- **Supervision-based:** Supervised, Unsupervised, Semi-Supervised, Reinforcement  
- **Algorithm-based:** Linear, Tree, Distance, Probabilistic, Neural Networks  
- **Data-based:** Structured, Unstructured, Semi-Structured  
