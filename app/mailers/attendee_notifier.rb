class AttendeeNotifier < ActionMailer::Base
  default from: 		"devcongress@gmail.com",
  				reply_to: "devcongress@gmail.com"

  def registration_successful attendee
  	@attendee = attendee
  	email_with_name = "#{@attendee.name} <#{@attendee.email}>"
  	mail to: email_with_name, subject: "[DevCongress 24.08.13] #{@attendee.name}, we're looking forward to meeting you :)"
  end

end
