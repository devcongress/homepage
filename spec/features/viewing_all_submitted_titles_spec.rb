require 'spec_helper'

feature 'Viewing titles' do
	
	scenario 'Listing all submitted titles' do
		title = FactoryGirl.create :title, title: 'Wading Through JavaScript MVC Jungle'
		visit titles_url
		click_link 'Wading Through JavaScript MVC Jungle'
		expect(page.current_url).to eql(title_url(title))
	end

end