require 'spec_helper'

feature 'Signing Up an Attendee' do
	scenario 'can signup an attendee' do
		visit '/'

		click_link 'Register'
		
		fill_in 'Name', with: 'Guy Developer'
		fill_in 'Github',		with: 'guy_developer'
		fill_in 'Twitter',	with: 'guy_developer'
		fill_in 'Linkedin', with: 'guy_developer'
		fill_in 'Website',  with: 'http://guydeveloper.me'
		fill_in 'Interests',	with: 'Snorkeling when away from my computer'
		fill_in 'Specialty',	with: 'Database normalization'
		fill_in 'Expectation', with: 'I want to be able to share my experience'
		click_button 'I am attending DevCongress so Sign me up!'

		expect(page).to have_content 'Yay! You are definitely attending DevCongress :)'
	end
end