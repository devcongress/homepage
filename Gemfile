source 'https://rubygems.org'
ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'

# Use PostgreSQL and Thin
gem 'pg'
gem 'thin'

gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'uglifier', '~> 4.1', '>= 4.1.16'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'jquery-rails'

gem 'turbolinks'
gem 'jbuilder', '~> 2.7'

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
	gem 'selenium-webdriver'
	gem 'factory_girl_rails'
	gem 'factory_girl'
end

group :doc do
  gem 'sdoc', require: false
end
