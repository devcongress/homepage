class CreateThankYouLists < ActiveRecord::Migration[5.2]
  def change
    create_table :thank_you_lists do |t|
      t.string :email

      t.timestamps
    end
  end
end
