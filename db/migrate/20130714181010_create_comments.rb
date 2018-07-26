class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.string :commenter_website
      t.string :comment_body
      t.references :title, index: true

      t.timestamps
    end
  end
end
