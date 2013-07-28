require 'spec_helper'

feature 'Viewing titles' do
	before do
		@title = FactoryGirl.create :title, title: 'Wading Through JavaScript MVC Jungle'
		visit titles_url
	end

	scenario 'Listing all submitted titles' do
		expect(page).to have_content 'Wading Through JavaScript MVC Jungle'
		expect(page.current_url).to eql(titles_url)
	end

	scenario 'Viewing a submitted title' do
		click_link 'Wading Through JavaScript MVC Jungle'

		expect(page.current_url).to eql title_url @title
		expect(page).to have_content 'A talk on Wading Through JavaScript MVC Jungle submitted/suggested by Joey Barton'
	end

end