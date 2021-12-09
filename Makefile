.PHONY: build all

build:
	docker run --rm -ti -v $(CURDIR):/workdir tmaier/markdown-spellcheck:latest "**/*.md"

all: build
