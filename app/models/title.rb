class Title < ActiveRecord::Base

  has_many :comments, dependent: :delete_all

  def self.order_by_number_of_comments_descending
    select('titles.*').
    joins(:comments).
    group('titles.id').
    order('count(comments.id) DESC')
  end


  validates :title, :submitter_name, :submitter_email, presence: true
  validates :relevance, :difficulty_level, presence: true
  validates :difficulty_level, numericality: { within: 0..5 }
end
