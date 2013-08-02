FactoryGirl.define do
	factory :attendee do
		name 			 	'Joey Barton'
		email 			'hello@joeybarton.org'
		website 		'http://joeybarton.org'
		github 		 	'joeybarton'
		twitter 		'joeyb'
		linkedin 	 	'joeybarton'
		interests 	'Hiking, reading, listening'
		specialty 	'Chrome DevTools'
		expectation 'Great expectations! I wanna both learn and teach stuff about Google Chrome\'s awesome DevTools'
	end
end