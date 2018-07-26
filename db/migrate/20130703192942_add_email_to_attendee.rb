class AddEmailToAttendee < ActiveRecord::Migration[5.2]
  def change
    add_column :attendees, :email, :string
  end
end
