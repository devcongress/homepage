require 'spec_helper'

feature 'Viewing titles' do
	
	scenario 'Listing all submitted titles' do
		title = FactoryGirl.create :title
		puts Title.all.count
		visit titles_url
		click_link 'Database Normalization'
		expect(page.current_url).to eql(title_url(title))
	end

end