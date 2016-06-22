Devconf::Application.configure do
	config.action_mailer.delivery_method 		= :smtp
	config.action_mailer.perform_deliveries = true
end
