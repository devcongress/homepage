class CreateStartups < ActiveRecord::Migration[5.2]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :ceo
      t.string :location
      t.integer :founding_year
      t.string :website
      t.string :twitter
      t.string :email
      t.string :github
      t.string :product
      t.string :product_tagline
      t.text :product_description
      t.text :technologies
      t.string :logo
      t.text :ceo_bio
      t.string :facebook

      t.timestamps
    end
  end
end
