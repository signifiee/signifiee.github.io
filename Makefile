# Use Homebrew Ruby if present (macOS system Ruby 2.6 is too old for Jekyll's gems).
# Install with: brew install ruby
BREW_RUBY := $(firstword $(wildcard /opt/homebrew/opt/ruby/bin /opt/homebrew/opt/ruby@3.2/bin /usr/local/opt/ruby/bin))
# (Prefixed per command: make 3.81 on macOS ignores a changed PATH for simple commands.)
ifneq ($(BREW_RUBY),)
RUN := PATH="$(BREW_RUBY):$$PATH"
endif

.PHONY: help install serve build clean

help:
	@echo "make install  - install Jekyll locally (into ./vendor/bundle)"
	@echo "make serve    - run the site at http://localhost:4000 (auto-reloads)"
	@echo "make build    - build static files into ./_site"
	@echo "make clean    - remove build output"

install:
	$(RUN) gem install bundler --no-document
	$(RUN) bundle config set --local path vendor/bundle
	$(RUN) bundle install

serve:
	$(RUN) bundle exec jekyll serve --source docs --destination _site --livereload --open-url

build:
	$(RUN) bundle exec jekyll build --source docs --destination _site

clean:
	rm -rf _site .jekyll-cache
