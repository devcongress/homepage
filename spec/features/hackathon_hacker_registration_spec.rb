require 'spec_helper'

feature 'Hacker registration' do
	before do
		visit root_path # start from homepage
	end

	scenario 'successfully registering for hackathon' do
		visit hack_path

		fill_in 'hacker-name', 			  with: 'Tom Boy'
		fill_in 'hacker-email', 		  with: 'tomboyhacker@example.org'
		fill_in 'hacker-github-username', with: 'tomboy'
		fill_in 'hacker-twitter-handle',  with: 'tomboy'
		fill_in 'hacker-pet-language',	  with: 'JavaScript'

		click_button 'Let\'s do this!'

	end
end