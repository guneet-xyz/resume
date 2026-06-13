setup:
	poetry install

build:
	poetry run rendercv render "resume.yaml"
