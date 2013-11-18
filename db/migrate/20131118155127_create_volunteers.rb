class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email_address
      t.string :phone_number
      t.string :github
      t.string :twitter
      t.string :website
      t.string :feedback

      t.timestamps
    end

    add_index :volunteers, :email_address, :unique
  end
end
