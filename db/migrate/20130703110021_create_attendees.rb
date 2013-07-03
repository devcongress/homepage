class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :website
      t.string :github
      t.string :twitter
      t.string :linkedin
      t.string :interests
      t.string :specialty
      t.text :expectation

      t.timestamps
    end
  end
end
