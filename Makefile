setup:
	#### You may want to use this convention
	#python -m venv ~/.testing-python-dec11
	#### To use this do this:
	# source ~/.testing-python-dec11/bin/activate
	### To deactivate do this
	# deactivate

install:
	# This upgrades pip to the latest version and run requirements.txt
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C hello.py test_hello.py

flakeit:
	flake8 hello.py	test_hello.py

reformat:
	black hello.py test_hello.py

test:
	# python -m pytest -vv --cov=mylib --cov=cli --cov=scli tests/*.py
	python -m pytest -vv hello.py test_hello.py


all: install  reformat flakeit lint  test