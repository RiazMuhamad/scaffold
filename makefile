install:
		pip install -r requirements.txt

format:
	python -m black *.py

lint:
	python -m pylint --disable=R,C hello.py

test:
	python -m pytest -vv test_hello.py
all: install lint test