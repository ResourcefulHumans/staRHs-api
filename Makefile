.DEFAULT_GOAL := help
.PHONY: help build

build: build/index.html ## Generate the HTML version based on api.raml

build/index.html: api.raml
	mkdir -p build
	./node_modules/.bin/raml2html $< > $@

help: ## (default), display the list of make commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
