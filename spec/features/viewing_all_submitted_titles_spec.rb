require 'spec_helper'

feature 'Viewing titles' do

	before do
		@wading_through_js 				= FactoryGirl.create :title, 		title: 'Wading Through JavaScript MVC Jungle'
		@comment_wading_js 				= FactoryGirl.create :comment, 	title:  @wading_through_js
		@database_normalization 	= FactoryGirl.create :title, 		title: 'Database Normalization For Fast Performance'
		@comment_db_normalization = FactoryGirl.create :comment, 	title:  @database_normalization

		visit titles_url

	end

	scenario 'Listing all submitted titles' do
		expect(page).to have_content 'Wading Through JavaScript MVC Jungle'
		expect(page.current_url).to eql(titles_url)
	end

	scenario 'Viewing a submitted title' do
		click_link 'Wading Through JavaScript MVC Jungle'

		expect(page.current_url).to eql title_url @wading_through_js
		expect(page).to have_content 'A talk on Wading Through JavaScript MVC Jungle submitted/suggested by Joey Barton'
		expect(page).to have_content @comment_wading_js.comment_body

		visit titles_url

		# testing second title
		click_link 'Database Normalization For Fast Performance'

		expect(page.current_url).to eql title_url @database_normalization
		expect(page).to have_content 'A talk on Database Normalization For Fast Performance submitted/suggested by Joey Barton'
		expect(page).to have_content @comment_db_normalization.comment_body
	end

end