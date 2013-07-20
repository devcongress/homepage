require 'spec_helper'

feature 'Visiting the About page' do
	scenario 'should show the About page' do
		visit '/'
		click_link 'About'

		expect(page).to have_title "About / Developers Congress, #{Time.now.year}"
		expect(page).to have_content "About DevCongress"
	end
end