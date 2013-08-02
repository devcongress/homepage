class Attendee < ActiveRecord::Base
	validates :name, :email, :expectation, presence: true
	validates :email, uniqueness: { case_sensitive: false }
end
