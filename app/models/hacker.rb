class Hacker < ActiveRecord::Base
    before_save { self.email = email.downcase }

    validates :name, :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }

end
