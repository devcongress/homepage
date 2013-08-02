# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
						 user_name: 'app16661060@heroku.com',
							password: 'drkcovtB5K5aDJ6GSdkAwQ',
								domain: 'peaceful-woodland-7453.herokuapp.com',
							 address: 'smtp.mandrillapp.com',
									port: 587,
				authentication: :plain,
	enable_starttls_auto: true
}

# Initialize the Rails application.
Devconf::Application.initialize!
