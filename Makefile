build:
	docker build . -t matthewswain/go-protoc:latest

publish: build
	docker push matthewswain/go-protoc:latest
