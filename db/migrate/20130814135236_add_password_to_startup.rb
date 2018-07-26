class AddPasswordToStartup < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :password, :string
  end
end
