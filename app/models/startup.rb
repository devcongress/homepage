class Startup < ActiveRecord::Base

	validates :name, :email, :password, 	presence: 	true
	validates :name, :email, 							uniqueness: { case_sensitive: false }

end
