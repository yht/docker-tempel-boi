all: build
build:
	docker build . -t blankoninfra/tempel
push:
	docker push blankoninfra/tempel
