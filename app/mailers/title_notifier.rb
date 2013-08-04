class TitleNotifier < ActionMailer::Base
  default from: 		'devcongress@gmail.com',
  				reply_to: 'devcongress@gmail.com'

  def submission_successful title
  	@title = title
  	email_with_name = "#{@title.submitter_name} <#{@title.submitter_email}>"
  	mail to: email_with_name, subject: '[DevCongress 24.08.13] Confirmation of Receipt'
  end

end
