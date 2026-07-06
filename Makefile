PYTHON=python
VENV=.venv

install:
	$(PYTHON) -m venv $(VENV)
	$(VENV)\Scripts\activate && pip install --upgrade pip
	$(VENV)\Scripts\activate && pip install -r requirements.txt

lint:
	$(VENV)\Scripts\activate && python -m pytest -q

train:
	$(VENV)\Scripts\activate && set DATA_PATH=D:\\diabetes.csv && python scripts/train.py --output models/model.joblib

evaluate:
	$(VENV)\Scripts\activate && python scripts/evaluate.py --model models/model.joblib

clean:
	rmdir /s /q models || true
	rmdir /s /q .venv || true
	rmdir /s /q .pytest_cache || true
