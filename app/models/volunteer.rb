class Volunteer < ActiveRecord::Base
  before_save { self.email_address = email_address.downcase }

  validates :firstname, :lastname, :email_address, :phone_number, presence: true
  validates :email_address, uniqueness: { case_sensitive: false }
  validates :phone_number, length: { minimum: 10 }

  def fullname
    "#{firstname} #{lastname}"
  end
end
