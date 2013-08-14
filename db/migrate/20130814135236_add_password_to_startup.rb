class AddPasswordToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :password, :string
  end
end
