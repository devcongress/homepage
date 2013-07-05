class AddEmailIndexToAttendee < ActiveRecord::Migration
  def change
  	add_index :attendees, :email, :unique
  end
end
