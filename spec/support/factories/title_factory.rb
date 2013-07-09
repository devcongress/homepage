FactoryGirl.define do
	factory :title do
		title 						'Database Normalization'
		submitter_name 		'Joey Barton'
		submitter_email 	'joey@barton.me'
		relevance 				'Your database can slow your application down and cost you money. Learn how to stop that!'
		difficulty_level 	1
	end
end