source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails'

# Use PostgreSQL and Thin
gem 'pg'
gem 'thin'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'

gem 'turbolinks'

gem 'email_spec'
gem 'rails-observers'

group :production do
	# Monitor app performance with New Relic RPM
	gem 'newrelic_rpm'
	gem 'rails_12factor'
end

group :development, :test do
	gem 'rspec-rails'
	gem 'meta_request'
  gem 'spring'
end

group :test do
	gem 'capybara'
end

group :doc do
  gem 'sdoc', require: false
end
