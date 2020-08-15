.PHONY: development
development:
	bundle exec jekyll s -H 0.0.0.0

.PHONY: build
build:
	bundle exec jekyll build
