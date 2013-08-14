class AddSaltToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :salt, :string
  end
end
