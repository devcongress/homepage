class Comment < ActiveRecord::Base
  belongs_to :title

  validates :commenter_name, presence: true
  validates :comment_body,   presence: true

end
