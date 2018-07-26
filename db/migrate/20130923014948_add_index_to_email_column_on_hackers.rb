class AddIndexToEmailColumnOnHackers < ActiveRecord::Migration[5.2]
  def change
#  	add_index :hackers, :email, :unique
  	add_index :hackers, :email
  end
end
