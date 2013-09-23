class AddIndexToEmailColumnOnHackers < ActiveRecord::Migration
  def change
  	add_index :hackers, :email, :unique
  end
end
