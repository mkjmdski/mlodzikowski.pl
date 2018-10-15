build:
	docker build -t hugo:generator .
	docker run -v $(shell pwd):/site hugo:generator hugo