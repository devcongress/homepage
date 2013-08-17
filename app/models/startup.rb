class Startup < ActiveRecord::Base
	before_save { self.email = email.downcase }

	validates :name, :email, :password, 	presence: 	true
	validates :name, :email, 							uniqueness: { case_sensitive: false }
	validates :founding_year,							numericality: { in: 1990..Time.now.year }, allow_nil: true
end
