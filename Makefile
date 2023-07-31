help:
	echo "help"

proto-python:
	docker run -v ./:/defs namely/protoc-all:latest -d . -o . -l python

proto-go:
	docker run -v ./:/defs namely/protoc-all:latest -d . -o . -l go

tag:
	git tag -a v${TAG} -m "version ${TAG}"