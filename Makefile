install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval housing-prices-ames.ipynb

format:
	black *.py
