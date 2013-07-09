class Title < ActiveRecord::Base
	validates :title, :submitter_name, :submitter_email, presence: true
	validates :relevance, :difficulty_level, presence: true
	validates :difficulty_level, numericality: { within: 0..5 }
end