require 'spec_helper'

feature 'Creating Comment' do
	before do
		FactoryGirl.create :title, title: 'Using Chrome DevTools'
		visit 		 titles_path
		click_link 'Using Chrome DevTools'
	end

	scenario 'can comment on a title' do
		fill_in 		 'comment-name',	 	with: 'Joey Barton'
		fill_in 		 'comment-website', with: 'http://joeybarton.com'
		fill_in 		 'comment-body', 	 	with: 'Interesting title! You got me :)'
		click_button 'Comment!'

		expect(page).to have_content 'Interesting title! You got me :)'
	end

	scenario 'cannot comment on a title' do
		click_button 'Comment!'

		expect(page).to have_content 'Oops! Your comment couldn\'t be saved.'
		expect(page).to have_content 'Commenter name can\'t be blank'
		expect(page).to have_content 'Comment body can\'t be blank'
	end

end