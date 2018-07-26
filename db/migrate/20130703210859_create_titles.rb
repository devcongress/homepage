class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.string :title
      t.string :submitter_name
      t.string :submitter_email
      t.text :relevance
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
