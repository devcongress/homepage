FactoryGirl.define do
	factory :startup do
		name 						'Open University of West Africa'
		ceo	 						'John Roberts'
		location 				'Hub Accra, Adjacent Arko Adjei Park, Osu, Accra'
		year 						Time.now.year
		website 				'http://www.ouwa.org'
		twitter 				'@ouwa'
		email 					'ouwa@ouwa.org'
		github 					'ouwa'
		product					'OUWA'
		product_tagline	'Open education for all, beginning in Africa!'
	end
end