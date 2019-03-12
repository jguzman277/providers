class AddDateOfHireToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :doh, :date
  end
end
