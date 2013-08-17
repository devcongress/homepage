require 'spec_helper'

feature 'Updating startup profile' do
	
	let(:ouwa) { FactoryGirl.create startup }

	before do
		visit new_startup_path
		fill_in 'startup-name', 						with: 'Open University of West Africa'
		fill_in 'startup-email', 						with: 'ouwa@ouwa.org'
		fill_in 'startup-password', 				with: 'secure-password-123'

		click_button 'Register us for the exhibition :)'
	end

	scenario 'can update a startup\'s profile' do
		startup = Startup.find_by_email 'ouwa@ouwa.org'

		visit startup_path(startup)
		startup_edit_link = "Edit #{startup.name}'s profile"
		expect(page).to have_link startup_edit_link

		click_link startup_edit_link
		
		fill_in 'startup-password', 				with: 'secure-password-123'
		fill_in 'startup-email',						with: 'ouwa@ouwa.org'
		fill_in 'startup-password', 				with: 'secure-password-123'
		fill_in 'startup-ceo',							with: 'John Roberts'
		fill_in 'startup-address', 					with: 'Hub-Accra, Osu, Accra'
		fill_in 'startup-founding-year', 		with: '2012'
		fill_in 'startup-website', 					with: 'e.g. http://www.ouwa.org'
		fill_in 'startup-twitter',					with: 'OUWAghana'
		fill_in 'startup-facebook', 				with: 'OUWA'
		fill_in 'startup-github', 					with: 'ouwa'
		fill_in 'startup-product', 					with: 'e.g. OUWA Learning Platform'
		fill_in 'startup-product_tagline', 	with: 'Education for all, beginning in Africa'
		fill_in 'startup-ceo_bio', 					with: 'John is a cool kid'
		fill_in 'startup-technologies', 		with: 'Django, Python, AWS, Node.js, Angular'

		click_button 'Update profile'

		expect(page.current_url).to eql startup_url(startup)
		expect(page).to have_content 'Changes successfully saved'
	end


	scenario 'cannot update startup profile' do
		startup = Startup.find_by_email 'ouwa@ouwa.org'

		visit startup_path(startup)
		startup_edit_link = "Edit #{startup.name}'s profile"
		expect(page).to have_link startup_edit_link

		click_link startup_edit_link
		
		fill_in 'startup-password', 				with: 'secure-password-123'
		fill_in 'startup-email',						with: 'ouwa@ouwa.org'
		fill_in 'startup-password', 				with: 'not-secure-password-123'
		fill_in 'startup-ceo',							with: 'John Roberts'
		fill_in 'startup-address', 					with: 'Hub-Accra, Osu, Accra'
		fill_in 'startup-founding-year', 		with: '2012'
		fill_in 'startup-website', 					with: 'e.g. http://www.ouwa.org'
		fill_in 'startup-twitter',					with: 'OUWAghana'
		fill_in 'startup-facebook', 				with: 'OUWA'
		fill_in 'startup-github', 					with: 'ouwa'
		fill_in 'startup-product', 					with: 'e.g. OUWA Learning Platform'
		fill_in 'startup-product_tagline', 	with: 'Education for all, beginning in Africa'
		fill_in 'startup-ceo_bio', 					with: 'John is a cool kid'
		fill_in 'startup-technologies', 		with: 'Django, Python, AWS, Node.js, Angular'

		click_button 'Update profile'

		expect(page).to have_content 'Password did not match'
	end


end