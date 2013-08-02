require 'spec_helper'

feature 'Submitting a Title' do
	include EmailSpec::Helpers
	include EmailSpec::Matchers

	before do
		ActionMailer::Base.deliveries.each { |mail| puts mail }
		ActionMailer::Base.deliveries.clear # clear 'em

		visit '/'
		click_link 'Submit a title'

	end

	scenario 'can submit a title' do
		fill_in 'submitter-name',  	with: 'Li Song'
		fill_in 'submitter-email', 	with: 'li@song.org'
		fill_in 'title', 		   	with: 'Secrets of a JavaScript Ninja'
		fill_in 'relevance', 		with: 'Client-side MVC is taking over the market'
		select  'Intermediate', 	from: 'title_difficulty_level'

		click_button 'Done, submit this title'

		# Send confirmation email with all details submitted surrounding the topic
		email = find_email! 'li@song.org'
		email.subject.should include '[DevCongress 24.08.13] Confirmation of Receipt'

	end
end