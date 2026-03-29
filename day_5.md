# Online Machine Learning (Incremental / Streaming Learning)

## Definition
- Online Machine Learning is a type of learning where the model is updated **continuously** as new data arrives.
- Instead of retraining from scratch, the model **learns step-by-step (instance-by-instance or mini-batch)**.

## When to Use (Concept Drift)
- **Concept Drift**: When data distribution changes over time.

### Types of Drift:
1. **Sudden Drift** → e.g., spam emails suddenly change pattern  
2. **Gradual Drift** → e.g., customer preferences slowly change  
3. **Recurring Drift** → e.g., seasonal trends (winter vs summer sales)

### Use Online Learning When:
- Data is **streaming or continuously generated**
- Environment is **dynamic**
- Need **real-time updates**
- Dataset is **too large to fit in memory**

**Examples:**
- Stock price prediction
- Real-time recommendation systems (YouTube, Netflix)
- Fraud detection systems

---

## How to Implement

### 1. Using River (Best for Online Learning)
- Designed specifically for streaming data

```python
from river import linear_model, metrics

model = linear_model.LinearRegression()
metric = metrics.MAE()

for x, y in data_stream:
    y_pred = model.predict_one(x)
    metric.update(y, y_pred)
    model.learn_one(x, y)
````

---

### 2. Using Vowpal Wabbit

* Fast and scalable for large-scale online learning

```bash
vw data.txt --loss_function squared --learning_rate 0.5
```

---

### 3. Using Scikit-learn (Partial Support)

* Use models with `partial_fit()`

```python
from sklearn.linear_model import SGDRegressor

model = SGDRegressor()

for X_batch, y_batch in stream:
    model.partial_fit(X_batch, y_batch)
```
---
## Learning Rate (Very Important)

* Controls how much the model updates with new data.

### Key Points:

* High learning rate → Fast learning but unstable
* Low learning rate → Stable but slow learning

### In Online Learning:

* Often use **decaying learning rate**
* Helps adapt early and stabilize later
---
## Out-of-Core Learning

* Used when data is **too large to fit in RAM**.
* Data is processed in **chunks (mini-batches)**.

### Steps:

1. Load small batch
2. Train model
3. Discard batch
4. Repeat

**Example:**

```python
for X_batch, y_batch in load_in_chunks():
    model.partial_fit(X_batch, y_batch)
```

## Disadvantages

1. **Sensitive to Noise**

   * Wrong data can mislead model quickly

2. **Order Matters**

   * Sequence of data affects learning

3. **Hard to Debug**

   * Continuous updates make tracking errors difficult

4. **Catastrophic Forgetting**

   * Model may forget old patterns

5. **Hyperparameter Tuning is Tricky**

   * Especially learning rate

## Solutions

| Problem              | Solution                                 |
| -------------------- | ---------------------------------------- |
| Noise sensitivity    | Use data filtering / smoothing           |
| Order dependency     | Shuffle data or use mini-batches         |
| Forgetting old data  | Use memory window / rehearsal techniques |
| Learning instability | Use adaptive/decaying learning rate      |
| Drift handling       | Use sliding window / weighted updates    |

## Batch vs Online Learning

| Feature          | Batch Learning               | Online Learning            |
| ---------------- | ---------------------------- | -------------------------- |
| Training Style   | Full dataset at once         | Incremental (step-by-step) |
| Data Requirement | Static dataset               | Streaming / dynamic data   |
| Model Update     | Retrain from scratch         | Continuous updates         |
| Speed            | Slow updates                 | Fast updates               |
| Memory Usage     | High                         | Low (can be chunk-based)   |
| Adaptability     | Poor (no real-time learning) | Excellent (handles drift)  |
| Complexity       | Simpler                      | More complex               |

## Summary

* Online ML = Learn continuously from new data
* Best for real-time and changing environments
* Handles concept drift effectively
* Requires careful tuning (especially learning rate)
