class CreateHackers < ActiveRecord::Migration[5.2]
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :github
      t.string :twitter
      t.string :email
      t.string :language

      t.timestamps
    end
  end
end
