# require 'spec_helper'

# feature 'Attendee Notification' do
# 	include EmailSpec::Helpers
# 	include EmailSpec::Matchers
# 	include Capybara::DSL

# 	let(:joey) { FactoryGirl.create :attendee }

# 	before do
# 		ActionMailer::Base.deliveries.clear #clear all emails
# 		visit '/'
# 	end

# 	scenario 'some joey registers to attend DevCongress' do
# 		click_link 'Register'

# 		fill_in 'Name', 				with: joey.name
# 		fill_in 'Email',				with: joey.email
# 		fill_in 'Github',				with: joey.github
# 		fill_in 'Twitter',			with: joey.twitter
# 		fill_in 'Linkedin', 		with: joey.linkedin
# 		fill_in 'Website',  		with: joey.website
# 		fill_in 'Interests',		with: joey.interests
# 		fill_in 'Specialty',		with: joey.specialty
# 		fill_in 'Expectation', 	with: joey.expectation

# 		click_button 'I am attending DevCongress so Sign me up!'

# 		# What should happen
# 		email = find_email! joey.email
# 		subject = "[DevCongress 24.08.13] #{joey.name}, we're looking forward to meeting you :)"
# 		email.subject.should include subject

# 		click_first_link_in_email
# 		expect(page.current_url).to eql agenda_path
# 	end

# end