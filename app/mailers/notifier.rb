class Notifier < ActionMailer::Base
  default 			to: Proc.new { ThankYouList.pluck(:email) },
							from: 'devcongress@gmail.com'

  def comments_updated(comment)
  	@comment = comment
  	email_with_name = "#{@comment.title.submitter_name} <#{@comment.title.submitter_email}>"
  	mail(to: email_with_name, subject: "[DevCongress 24.08.13] New comment on your title, #{@comment.title.title}")
  end

	def thank_you
		mail(subject: 'Thank you for making DevCongress successful. You\'re awesome!')
	end

  def hacker_registered(hacker)
    @hacker = hacker
    email_with_name = "#{hacker.name} <#{hacker.email}>"
    mail(to: email_with_name, subject: "[DevCongress MPower Hackathon] Successful Registration!")
  end

end
