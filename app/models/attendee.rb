class Attendee < ActiveRecord::Base
	validates :name, :email, :expectation, presence: true
end
