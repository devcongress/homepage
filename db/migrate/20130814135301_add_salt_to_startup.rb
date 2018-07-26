class AddSaltToStartup < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :salt, :string
  end
end
