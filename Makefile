dep: ## make dep
	gem install bundler -v 2.0.2
	bundle install

install: ## make install
	bundle install
	bundle exec pod install

update: ## make update
	bundle update
	bundle exec pod install --repo-update
