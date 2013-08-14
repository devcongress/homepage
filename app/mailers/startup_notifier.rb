class StartupNotifier < ActionMailer::Base
  default from:     'devcongress@gmail.com',
          reply_to: 'devcongress@gmail.com'


  def registration_successful(startup)
    @startup = startup
    email_with_name = "#{startup.name} <#{startup.email}>"
    mail to: email_with_name, subject: 'Thanks for registering! Follow link to update your profile'
  end
end
