# require 'spec_helper'

# feature 'Startup' do

# 	before do
# 		ActionMailer::Base.deliveries.clear #again let's get rid of 'em
# 		visit root_path
# 	end

# 	scenario 'can register to exhibit at event' do
# 		click_link 'Register my startup'

# 		fill_in 'startup-name', 	with: 'Open University of West Africa'
# 		fill_in 'startup-email',	with: 'ouwa@ouwa.org'
# 		fill_in 'startup-password', with: 'secure-password-123'

# 		click_button 'Register us for the exhibition :)'

# 	end

# end

# # fill_in 'CEO',  						with: ouwa.ceo
# # fill_in 'Website', 					with: ouwa.website
# # fill_in 'Contact Email', 		with: ouwa.email
# # fill_in 'Twitter', 					with: ouwa.twitter
# # fill_in 'Github', 					with: ouwa.github
# # fill_in 'Product', 					with: ouwa.product
# # fill_in 'Product Tagline', 	with: ouwa.product_tagline