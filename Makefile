install:
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements.txt
install-azure:
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements-azure.txt
format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
