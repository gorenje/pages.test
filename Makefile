.PHONY: development
development:
	bundle exec jekyll s -H 0.0.0.0

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: images
images:
	@mkdir -p assets/640
	@mkdir -p assets/400
	for n in assets/images/* ; do \
     if [ ! -f assets/640/$$(basename $${n}) ] ; then \
        convert $${n} -resize 640x assets/640/$$(basename $${n}); \
     fi ; \
     if [ ! -f assets/400/$$(basename $${n}) ] ; then \
        convert $${n} -resize 400x assets/400/$$(basename $${n}); \
     fi ; \
  done
