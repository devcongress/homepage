require 'spec_helper'

feature 'Email notification for comments' do
	include Capybara::DSL

	let(:chrome_devtools) { FactoryGirl.create :title,
																							title: 		 'Chrome DevTools',
																							relevance: 'Your web application can be faster!' }

	before do
		ActionMailer::Base.deliveries.clear # clear 'em dummy emails ;)
		visit title_url(chrome_devtools)
	end

	scenario 'send email notification on new comment' do
		fill_in 'comment-name', 	 with: 'Zed Shaw'
		fill_in 'comment-website', with: 'http://zedshaw.com'
		fill_in 'comment-body', 	 with: 'Seriously? You wanna talk about this? You need Paul Irish here'

		click_button 'Comment!'
		email = find_email! chrome_devtools.submitter_email
		subject = "[DevCongress 24.08.13] New comment on your title, #{chrome_devtools.title}"
		email.subject.should include subject
	end



end