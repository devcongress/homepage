require 'spec_helper'

feature 'Submitting a Title' do
	before do
		visit '/'
		click_link 'Submit a title'

	end

	scenario 'can submit a title' do
		fill_in 'submitter-name',  	with: 'Li Song'
		fill_in 'submitter-email', 	with: 'li@song.org'
		fill_in 'title', 		   	with: 'Secrets of a JavaScript Ninja'
		fill_in 'relevance', 		with: 'Client-side MVC is taking over the market'
		select  'Intermediate', 	from: 'Difficulty Level'

		click_button 'Done, submit this title'
	end
end