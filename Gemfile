source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use PostgreSQL and Thin
gem 'pg'
gem 'thin'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'email_spec'
gem 'rails-observers'

group :production do
	# Monitor app performance with New Relic RPM
	gem 'newrelic_rpm'
	gem 'rails_12factor'
end

group :development, :test do
	gem 'rspec-rails'
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
