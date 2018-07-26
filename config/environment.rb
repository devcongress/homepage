# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
						 user_name: ENV['MANDRILL_USERNAME'],
							password: ENV['MANDRILL_PASSWORD'],
								domain: 'peaceful-woodland-7453.herokuapp.com',
							 address: 'smtp.mandrillapp.com',
									port: 587,
				authentication: :plain,
	enable_starttls_auto: true
}

# Initialize the Rails application.
Devconf::Application.initialize!
