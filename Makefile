GO_FILES=$(shell find -type f -name '*.go')

all: test

test:
	for f in $(GO_FILES); do \
		if [ -n "`gofmt -l $$f`" ]; then \
			echo "$$f is not gofmted"; \
			exit 1; \
		fi; \
	done
	gopherjs test
