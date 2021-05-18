default: install

all: install build

h help:
	@egrep '^\S|^$$' Makefile


install:
	bundle config set --local path vendor/bundle
	bundle install

upgrade:
	bundle update


# Serve on the root without using livereload (as this conflicts with the Jekyll Manager plugin).
a admin:
	bundle exec jekyll serve  --trace --baseurl ''

# Serve on subpath, as on Github Pages project site.
s serve:
	bundle exec jekyll serve --trace --livereload

# Serve on root, as on GitHub Pages user site or Netlify.
r serve-root:
	bundle exec jekyll serve  --trace --baseurl '' #--livereload


build:
	JEKYLL_ENV=production bundle exec jekyll build --trace
