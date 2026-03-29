# Batch Machine Learning (Offline Learning)

## Definition
- Batch Machine Learning is a type of learning where the model is trained on the **entire dataset at once (offline)**.
- After training, the model is **deployed**, and it does **not learn continuously** from new data.
- To update the model, you must **retrain it from scratch** with new data.

## How It Works
1. Collect data
2. Train model on full dataset
3. Deploy model
4. When new data arrives → retrain whole model

## Example
- Train a model to predict house prices using historical data.
- After deployment, new market trends appear → model becomes outdated.
- Solution: retrain model with updated dataset.

## Problems with Batch Machine Learning

1. **Cannot Adapt Quickly**
   - Model does not learn from new data in real-time.
   - Becomes outdated if data changes (data drift).

2. **High Computational Cost**
   - Retraining on entire dataset requires time and resources.

3. **Not Suitable for Streaming Data**
   - Cannot handle continuous data (e.g., live user activity).

4. **Downtime During Updates**
   - Model may need to be taken offline for retraining.

5. **Storage Issues**
   - Requires storing large amounts of historical data.

## Disadvantages

- Slow updates
- Resource intensive
- Poor performance in dynamic environments
- Not scalable for real-time applications
- Inefficient for frequently changing data

## When to Use
- Data is **stable (does not change frequently)**
- Dataset size is manageable
- Real-time learning is not required

**Example Use Cases:**
- Spam detection (updated periodically)
- Sales forecasting (monthly updates)

## Summary
- Batch ML = Train once → Deploy → Retrain when needed  
- Best for static environments  
- Weak for real-time and rapidly changing systems  
