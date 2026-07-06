# MlOps Project — Diabetes

This repository contains a minimal MLOps scaffold for training and evaluating a model on the diabetes dataset.

Data
- Place the CSV at `D:\\diabetes.csv` or set the `DATA_PATH` environment variable.

Quick start

1. Create a Python environment and install dependencies:

```bash
python -m venv .venv
.\.venv\Scripts\activate
pip install -r requirements.txt
```

2. Train the model (uses MLflow to log metrics):

```bash
set DATA_PATH=D:\\diabetes.csv
python scripts/train.py --output models/model.joblib
```

3. Evaluate:

```bash
python scripts/evaluate.py --model models/model.joblib
```

Files
- `src/` — project code
- `scripts/` — CLI entrypoints
- `models/` — trained model output
- `.github/workflows/ci.yml` — CI workflow

Notes
- The default data path is `D:\\diabetes.csv`. Adjust if needed.
